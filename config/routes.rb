Rails.application.routes.draw do
    get 'welcome/index'

    # adds url/articles/:id/comments path
    resources :articles do
        resources :comments
    end

    root 'welcome#index'
end
