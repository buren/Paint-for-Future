Future::Application.routes.draw do
  Mercury::Engine.routes

  get "message/index"

  resources :galleries

  resources :videos, :path =>  "/partners"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :contacts do 
    member { post :show }
  end

  resources :projects

  resources :goals, :path => "/center"

  resources :posts, :path => "/news" do
    member { post :show }
  end
  

  match "/posts/:id" => 'posts#show' 
  match "/posts" => 'posts#index' 
  match "/blog" => 'posts#index'

  match "/videos" => 'videos#index'

  get "home/index"

  root :to => "home#index"

  match "/sitemap.:format",
     :controller => "home",
     :action => "sitemap",
     :conditions => { :method => :get }

end
