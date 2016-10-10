Rails.application.routes.draw do
  devise_for :users
  root 'home#hello'
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new" # custom path to sign_up/registration
  end

  # Below for all other routes:
end
