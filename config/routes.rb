Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
end

# First page is a form with an input, where a user can type a question to ask the Coach
# After submitting the form, the user is redirected to another page where
# she/he will see her/his question and the coach answer.
