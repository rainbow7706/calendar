FullcalendarRails::Application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  
  root :to => 'events#index'
  resources :events do 
    collection do 
      get :get_events
      post :move
      post :resize
    end
  end

end

