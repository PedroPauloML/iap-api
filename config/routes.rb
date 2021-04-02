Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_version(:module => "V1", :path => {:value => "v1"}, :defaults => { :format => :json }) do
    # Authentication
    post 'authentication/sign_up'
    post 'authentication/sign_in'
    post 'authentication/confirm_email/:token', to: "authentication#confirm_email"
    post 'authentication/resend_confirmation_mail'

    # Users
    get 'users/find_by_token', to: 'users#find_by_token'
  end

  match 'v1/*path', to: 'v1#routing_error', via: :all
end
