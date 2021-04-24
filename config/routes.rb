Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:show]
  
  root 'forums#index'
  get 'forums/link' => 'forums#link'
  
  get 'forums/J1' => 'forums#J1'
  get 'forums/sapporo' => 'forums#sapporo'
  get 'forums/sendai' => 'forums#sendai'
  get 'forums/kashima' => 'forums#kashima'
  get 'forums/urawa' => 'forums#urawa'
  get 'forums/kashiwa' => 'forums#kashiwa'
  get 'forums/fctokyo' => 'forums#fctokyo'
  get 'forums/kawasaki' => 'forums#kawasaki'
  get 'forums/yokohamafm' => 'forums#yokohamafm'
  get 'forums/yokohamafc' => 'forums#yokohamafc'
  get 'forums/syonan' => 'forums#syonan'
  get 'forums/shimizu' => 'forums#shimizu'
  get 'forums/nagoya' => 'forums#nagoya'
  get 'forums/gosaka' => 'forums#gosaka'
  get 'forums/cosaka' => 'forums#cosaka'
  get 'forums/kobe' => 'forums#kobe'
  get 'forums/hiroshima' => 'forums#hiroshima'
  get 'forums/tokushima' => 'forums#tokushima'
  get 'forums/fukuoka' => 'forums#fukuoka'
  get 'forums/tosu' => 'forums#tosu'
  get 'forums/ouita' => 'forums#ouita'
  resources :forums do 
    resources :likes, only: [:create, :destroy]
  end
end
