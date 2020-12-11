Rails.application.routes.draw do
  get 'users/:id/welcome', to: 'users#welcome'
end
