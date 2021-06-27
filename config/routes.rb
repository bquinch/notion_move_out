Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "notion_block#index"

  resources :notion_blocks, only: :index

  resources :notion_block_todos, only: :update
end
