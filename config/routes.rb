Rails.application.routes.draw do

  root "pstudents#home", as: :home

  post 'pstudents/create' => 'pstudents#create', as: :create_pstudent

  #Application Form and creation
  get 'applications/new' => 'applications#new', as: :new_application
  post 'applications/create' => 'applications#create', as: :create_application


  #Showing new website (old code)
  # get 'pstudents/newhome' => 'pstudents#newhome', as: :newhome


  #NEW WEBSITE ROUTES
  get '/nosotros' => 'pstudents#nosotros', as: :nosotros
  get '/cursos' => 'pstudents#cursos', as: :cursos
  get '/newsletter' => 'pstudents#newsletter_form', as: :newsletter_form
  get '/terms' => 'pstudents#terms', as: :terms
  get '/privacy' => 'pstudents#privacy', as: :privacy
  get '/metodologia' => 'pstudents#methodology', as: :methodology
  get '/cursos/htmlycss' => 'pstudents#curso_htmlcss', as: :curso_htmlcss


  ##integrating this as part of the old applications object
  get '/applications' => 'applications#show', as: :applications

  ##Routes for July 1, 2017 version
  post 'pstudents/quickform' => 'pstudents#create_qf', as: :create_pstudent_qf


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
