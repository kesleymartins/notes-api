Rails.application.routes.draw do
  resources :notes, except: %i[show]
end
