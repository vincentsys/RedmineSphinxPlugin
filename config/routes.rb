# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get "/projects/:id/sphinx/index", :to => "sphinx#index"
get 'projects/:id/sphinx/show', :to => "sphinx#show"