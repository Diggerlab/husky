Husky::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :applies
  resources :welcome do 
  	collection do 
      get :en, :to => "welcome#index"
			get :zh, :to => "welcome#zh"
			get :ja, :to => "welcome#ja"
		end
  end
  root to: 'welcome#index'
end
