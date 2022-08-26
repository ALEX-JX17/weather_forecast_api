Rails.application.routes.draw do
  namespace :api, defaults:{format: 'json'} do 
    namespace :v1 do
      get 'forecast', to: 'forecast#query'
    end
  end
end
