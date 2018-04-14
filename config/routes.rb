Rails.application.routes.draw do
  root 'static_pages#home'
  post 'contact-us', to: 'contact_us#create'
end
