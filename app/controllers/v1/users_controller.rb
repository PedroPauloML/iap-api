class V1::UsersController < V1Controller
  before_action :current_user, except: [:find_by_token]

  # GET /v1/users/find_by_token
  # URL_PATH find_by_token_v1_users_path
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

  # PUT/PATCH /v1/users/:id
  # URL_PATH v1_user_path(id: 1)
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

  # PUT /v1/users/:id/update_avatar
  # URL_PATH update_avatar_v1_user_path(id: 1)
  def update_avatar
    return render_simple_error("Avatar não informado", 400) unless params[:avatar]
    profile = current_user.profile

    profile.avatar = params[:avatar]

    if profile.save
      @user = current_user.reload
      render :show
    else
      resource_errors = ResourceErrors.new(profile)
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
