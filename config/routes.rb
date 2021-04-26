Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_version(:module => "V1", :path => {:value => "v1"}, :defaults => { :format => :json }) do
    # Authentication
    post 'authentication/sign_up'
    post 'authentication/sign_in'
    post 'authentication/confirm_email/:token', to: "authentication#confirm_email"
    post 'authentication/resend_confirmation_mail'
    post 'authentication/request_password_recover'
    get 'authentication/check_password_recover_token'
    put 'authentication/recover_password'

    # Messages
    resources :messages, except: [:new, :edit] do
      member do
        put 'publish'
      end

      collection do
        get "favorites", to: "messages/favorites#index", as: "favorites"
      end

      resources :favorites, only: [:create, :destroy], controller: "messages/favorites"
    end

    # News
    resources :news, except: [:new, :edit] do
      member do
        put 'publish'
      end
    end

    # Users
    resources :users, only: [:update] do
      collection do
        get 'find_by_token'
      end

      member do
        put 'update_avatar'
      end
    end
  end

  match 'v1/*path', to: 'v1#routing_error', via: :all
end
