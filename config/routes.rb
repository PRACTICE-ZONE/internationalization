Rails.application.routes.draw do
  devise_for :users
  resources :posts
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :feedbacks
    root 'static_pages#index'
    get 'pricing', to: 'static_pages#pricing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end
end
