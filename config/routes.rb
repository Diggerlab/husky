Husky::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :applies
  resources :welcome do 
  	collection do 
      get :en, :to => "welcome#en"
			get :zh, :to => "welcome#zh"
			get :ja, :to => "welcome#ja"
		end
  end
  match ':action'  => 'static#:action'
  root to: 'welcome#home'
end
