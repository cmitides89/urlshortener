Trainingproject::Application.routes.draw do
  root :to => 'shorts#new'
  resources :shorts, :only => [:new, :create, :show]
end
