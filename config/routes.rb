Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
       #nested within or to show conjunction to..url reads todo_lists/1/todo_items/1 etc...
      member do
        patch :complete
      end
    end
  end 
  
  root 'todo_lists#index'
end
