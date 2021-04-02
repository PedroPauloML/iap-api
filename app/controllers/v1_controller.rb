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

  private

  def render_simple_error(message, status_code)
    return render json: { error: { message: message } }, status: status_code
  end
end
