Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/gossip_project/acceuil', to: 'static#acceuil'
 get '/gossip_project/team', to: 'static#team'
 get '/gossip_project/contact', to: 'static#contact'
 get 'gossip_project/:id', to: 'static#welcome'




end
