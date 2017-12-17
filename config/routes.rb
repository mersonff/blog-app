Rails.application.routes.draw do

	root to: "artigos#index"
	resources :artigos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
