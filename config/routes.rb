Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#top'

  resources :artists do
    collection do
      get :search
    end
  end

    #管理者
    namespace :admin do
      resources :artists do
        collection do
          get :search
        end
      end
    end
end
