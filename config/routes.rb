Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'authors', to: 'authors#index'
  get 'authors/new', to: 'authors#new', as: 'new_author'
  post 'authors', to: 'authors#create'
  get 'authors/:id', to: 'authors#show', as: 'author'
  get 'authors/:id/edit', to:'authors#edit', as: 'edit_author'
  put 'authors/:id', to: 'authors#update'
  patch 'authors/:id', to: 'authors#update'
  delete 'authors/:id', to: 'authors#destroy'
  get 'books', to: 'books#index'
  get 'books/new', to: 'books#new', as: 'new_book'
  post 'books', to: 'books#create'
  get 'books/:id', to: 'books#show', as: 'book'
  get 'books/:id/edit', to: 'books#edit', as: 'edit_book'
  put 'books/:id', to: 'books#update'
  patch 'books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destroy'
  get 'authors/:id/books', to: 'authors#books'
  get 'about', to: 'home#about'
end
