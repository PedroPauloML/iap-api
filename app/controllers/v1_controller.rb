class V1Controller < ApplicationController
  def routing_error
    render(
      json: {
        error: {
          message: "This resources not exists or is not avaliable. Check if you send the right method (GET, POST, PUT, DELETE) and the url."
        }
      },
      status: 404
    )
  end

  def page
    if params[:page].present? and params[:page].to_i < 1
      return render_simple_error("O número da página deve ser maior que 0", 404)
    end
    params[:page] || 1
  end

  def per_page
    if params[:per_page].present? and params[:per_page].to_i < 1
      return render_simple_error("O número de resultados por página deve ser maior que 0", 404)
    end
    params[:per_page] || 10
  end

  private

  def render_simple_error(message, status_code)
    return render json: { error: { message: message } }, status: status_code
  end

  def current_user
    jwt_token = request.headers["HTTP_TOKEN"]

    begin
      payload = AuthToken.check_token(jwt_token)
    rescue
      return render_simple_error("Autorização negada", 401)
    end

    @current_user ||= User.find_by_password_hash(payload[:data])

    return render_simple_error("Autorização negada", 401) unless @current_user

    @current_user
  end
end
