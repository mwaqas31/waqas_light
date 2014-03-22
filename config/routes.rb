WaqasLight::Application.routes.draw do


root :to => "main#index"

get "about-us",to: 'main#about_us' , as: 'about_us'
get "contact-us",to: 'main#contact_us' , as: 'contact_us'
get "pricing",to: 'main#pricing' , as: 'pricing'



end
