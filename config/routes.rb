Husky::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :applies
  resources :welcome do 
  	collection do 
			get :ch, :to => "welcome#chinese"
			get :jp, :to => "welcome#japanese"
		end
  end
  root to: 'welcome#index'
end
