Rails.application.routes.draw do

  root to: 'home#index'

  resources :users # :users, only: [:show, :new, :create]

  # Nested resources, so that in subreddits you will show a lot of posts inside the subreddit
  resources :subreddits, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments
    end
  end

  # resources :votes, only: [:show, :new, :create]

end
