# require "#{Rails.root}/app/services/auth_token.rb"

class V1::AuthenticationController < V1Controller
  def sign_up
    password_confirmation = params[:user][:password_confirmation]

    unless password_confirmation.present?
      return render_simple_error('Confirmação de senha não informada', 400)
    end

    @user = User.new(sign_up_params)
    @user.church_id = 1

    if @user.password != password_confirmation
      return render_simple_error('Confirmação de senha não coincide com a senha', 422)
    end

    @user.confirmation_token = Digest::SHA1.hexdigest([Time.now, rand].join)

    if @user.save
      AuthenticationMailer.with(user: @user).email_confirmation.deliver_later

      render(
        json: {
          message: "Um e-mail de confirmação foi enviado para o seu endereço de e-mail!"
        }
      )
    else
      resource_errors = ResourceErrors.new(@user)
      render(
        json: { error: resource_errors.formatted_errors[:error].first }, status: 422
      )
    end
  end

  def sign_in
    return render_simple_error('E-mail não informado', 400) unless params[:email].present?
    return render_simple_error('Senha não informado', 400) unless params[:password].present?

    @user = User.find_by_email(params[:email])

    return render_simple_error('E-mail incorreto', 400) unless @user.present?
    unless @user.password == params[:password]
      return render_simple_error('Senha incorreta', 400)
    end

    unless @user.account_confirmed
      return render_simple_error(
        'E-mail não confirmado. Por favor, verifique sua caixa de entrada.',
        406
      )
    end

    @jwt = AuthToken.generate_token({ data: @user.password_hash })

    render :show
  end

  def confirm_email
    unless params[:token]
      return render_simple_error("Token não informado", 400)
    end

    user = User.find_by_confirmation_token(params[:token])

    unless user.present?
      return render_simple_error("#{User.model_name.human} não encontrado", 400)
    end

    user.account_confirmed = true
    user.confirmation_token = nil

    if user.save
      render(
        json: {
          message: "E-mail confirmado! Para continuar, faça login"
        }
      )
    else
      resource_errors = ResourceErrors.new(user)
      render(
        json: { error: resource_errors.formatted_errors[:error].first }, status: 422
      )
    end
  end

  def resend_confirmation_mail
    unless params[:email].present?
      return render_simple_error(
        "O e-mail não informado. Por favor, insira o endereço de e-mail do usuário.",
        400
      )
    end

    user = User.find_by_email(params[:email])

    if user
      if user.account_confirmed
        render_simple_error("Este #{User.model_name.human.downcase} já teve o e-mail confirmado...", 406)
      else
        user.confirmation_token = Digest::SHA1.hexdigest([Time.now, rand].join)
        user.save

        AuthenticationMailer.with(user: user).email_confirmation.deliver_later

        render(
          json: {
            message: "O e-mail de confirmação foi re-enviado para o seu endereço de e-mail!"
          }
        )
      end
    else
      unless user
        render_simple_error(
          "Não foi encontrado nenhum #{User.model_name.human.downcase} com esse e-mail. Verifique se o e-mail informado está correto.",
          400
        )
      end
    end
  end

  def request_password_recover
    unless params[:email].present?
      return render_simple_error(
        "O e-mail não informado. Por favor, insira o endereço de e-mail do usuário.",
        400
      )
    end

    user = User.find_by_email(params[:email])

    if user
      user.password_recover_token = Digest::SHA1.hexdigest([Time.now, rand].join)
      user.save

      AuthenticationMailer.with(user: user).request_password_recover.deliver_later

      render(
        json: {
          message: "O e-mail de solicitação de recuperação de senha foi enviado para o seu endereço de e-mail!"
        }
      )
    else
      unless user
        render_simple_error(
          "Não foi encontrado nenhum #{User.model_name.human.downcase} com esse e-mail. Verifique se o e-mail informado está correto.",
          400
        )
      end
    end
  end

  def check_password_recover_token
    unless params[:token]
      return render_simple_error("Token não informado", 400)
    end

    user = User.find_by_password_recover_token(params[:token])

    if user
      render(json: { message: "Token válido" })
    else
      render_simple_error("Token inválido", 406)
    end
  end

  def recover_password
    unless params[:token]
      return render_simple_error("Token não informado", 400)
    end

    user = User.find_by_password_recover_token(params[:token])

    unless user.present?
      return render_simple_error(
        "Token de confirmação de senha expirado. Por favor, solicite uma nova recuperação de senha",
        400
      )
    end

    unless params[:password]
      return render_simple_error("Senha não informada", 400)
    end

    unless params[:password_confirmation]
      return render_simple_error("Confirmação de senha não informada", 400)
    end

    if params[:password] != params[:password_confirmation]
      return render_simple_error('Confirmação de senha não coincide com a senha', 422)
    end

    user.password = params[:password]
    user.password_recover_token = nil

    if user.save
      AuthenticationMailer.with(user: user).password_recovered.deliver_later

      render(
        json: {
          message: "Senha recuperada com sucesso! Por favor, acesse a página inicial e faça login novamente"
        }
      )
    else
      resource_errors = ResourceErrors.new(user)
      render(
        json: { error: resource_errors.formatted_errors[:error].first }, status: 422
      )
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :email, :password, profile_attributes: [:name]
    )
  end
end
