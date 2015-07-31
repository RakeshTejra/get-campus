Rails.application.routes.draw do
  
  devise_for :users
  ActiveAdmin.routes(self)
  
  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/add_detail'

end
