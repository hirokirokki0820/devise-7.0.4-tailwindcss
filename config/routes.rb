Rails.application.routes.draw do
  root "home#top"

  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    sessions: "admins/sessions",
    passwords: "admins/passwords",
    confirmations: "admins/confirmations"
  }
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
