Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'messages#index'
  
  #CURD
  get 'messages/:id' => 'messages#show'
  post 'messages' => 'messages#create'
  put 'messages/:id' => 'messages#update'
  delete'messages/:id' => 'messages#destroy'
  
  #index: showの補助ページ
  get 'messages' => 'messages#index'
  
  #new: 新規作成用のフォームページ
  get 'messages/new' => 'messages#new'
  
  #edit: 更新用のフォームページ
  get 'messages/edit' => 'messages#edit'
  
end
