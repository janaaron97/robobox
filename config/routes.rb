Rails.application.routes.draw do
	resources :folders do
     	resources :photos
   	end
	root 'folders#index'
end
