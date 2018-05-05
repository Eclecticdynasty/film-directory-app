Rails.application.routes.draw do
  root 'welcome#home'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
 

end
