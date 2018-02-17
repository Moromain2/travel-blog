Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  root to: 'posts#welcome'
  get 'admin/sign_up'
  get '*path' => redirect('/')
end
