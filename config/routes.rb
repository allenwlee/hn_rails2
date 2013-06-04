HnRails2::Application.routes.draw do


  resources :posts do
    resources :comments do
    end
  end

end
