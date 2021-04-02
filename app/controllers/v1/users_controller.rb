class V1::UsersController < V1Controller
  def find_by_token
    return render_simple_error("Token não informado", 400) unless params[:token]

    begin
      token = AuthToken.check_token(params[:token])
    rescue JWT::DecodeError
      return render_simple_error("Token inválido", 400)
    end

    @user = User.find_by_password_hash(token[:data])

    return render_simple_error("#{User.model_name.human} não encontrado", 404) unless @user

    render :show
  end
end
