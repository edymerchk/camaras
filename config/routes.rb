Camaras::Application.routes.draw do
  get '/camaras/:id', to: 'camaras#show', as: 'camara'
  get '/camaras', to: 'camaras#index'
  root to: 'camaras#index'
end
