WaqasLight::Application.routes.draw do



	root :to => "main#index"
	get "about-us",to: 'main#about_us' , as: 'about_us'
	get "contact-us",to: 'main#contact_us' , as: 'contact_us'
	post "contact-us", to: 'main#contact_us', as: 'contact_us_mailer'
	get "pricing",to: 'main#pricing' , as: 'pricing'
	get "admin", to: 'main#admin', as: 'admin'
	resources :products, :only => [:show]
	resources :carts, :only => [:index]
	get 'current_cart',to: 'carts#show',as: 'current_cart'

	resources :line_items, :only=> [:create]
	namespace :admin do
		resources :session, :only => [:new,:destroy,:create]
		resources :products
		resources :categories
	end


end
