Rails.application.routes.draw do

  get 'summaries/new'

  get 'summaries/show'

  devise_for :users

  resources :topics do
     resources :posts, except: [:index] do
      resources :summaries, only: [:new, :create, :show]
   end
 end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
