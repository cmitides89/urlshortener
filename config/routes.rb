Trainingproject::Application.routes.draw do
  root :to => 'shorts#welcome'
  resources :shorts, :only => [:new, :create, :show]
end
