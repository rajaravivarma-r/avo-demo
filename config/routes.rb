Rails.application.routes.draw do
  mount Avo::Engine, at: '/products'
  root to: 'avo/products#index'
end
