class V1::UsersController < V1Controller
  before_action :current_user, except: [:find_by_token]

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

  def update
    if current_user.update(user_params)
      @user = current_user
      render :show
    else
      resource_errors = ResourceErrors.new(current_user)
      render(
        json: { error: resource_errors.formatted_errors[:error].first }, status: 422
      )
    end
  end

  private

  def user_params
    params.require(:user).permit(profile_attributes: [:id, :name])
  end
end
