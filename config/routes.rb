Rails.application.routes.draw do
  get 'welcome/index'
  get 'course_schedules', to: 'course_schedules#index', as: :course_schedules
  get 'information/parents', to: 'information#parents', as: :parents
  get 'information/syllabus', to: 'information#syllabus', as: :syllabus
  get 'information/outline', to: 'information#outline', as: :outline
  get 'about/michael_morgan', to: 'about#michael_morgan', as: :michael_morgan
  get 'about/larry_quimby', to: 'about#larry_quimby', as: :larry_quimby
  get 'about/ly_hua', to: 'about#ly_hua', as: :ly_hua
  get 'about/chem_club', to: 'about#chem_club', as: :chem_club
  get 'handouts/AP', to: 'handouts#ap', as: :ap
  get 'handouts/non_AP', to: 'handouts#non_ap', as: :non_ap
  get 'handouts/practice', to: 'handouts#practice', as: :practice


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  resources :announcements, :schedules, :information
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
