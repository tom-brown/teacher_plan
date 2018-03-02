Rails.application.routes.draw do
  # Routes for the Goal resource:
  # CREATE
  get "/goals/new", :controller => "goals", :action => "new"
  post "/create_goal", :controller => "goals", :action => "create"

  # READ
  get "/goals", :controller => "goals", :action => "index"
  get "/goals/:id", :controller => "goals", :action => "show"

  # UPDATE
  get "/goals/:id/edit", :controller => "goals", :action => "edit"
  post "/update_goal/:id", :controller => "goals", :action => "update"

  # DELETE
  get "/delete_goal/:id", :controller => "goals", :action => "destroy"
  #------------------------------

  # Routes for the Improvement_plan resource:
  # CREATE
  get "/improvement_plans/new", :controller => "improvement_plans", :action => "new"
  post "/create_improvement_plan", :controller => "improvement_plans", :action => "create"

  # READ
  get "/improvement_plans", :controller => "improvement_plans", :action => "index"
  get "/improvement_plans/:id", :controller => "improvement_plans", :action => "show"

  # UPDATE
  get "/improvement_plans/:id/edit", :controller => "improvement_plans", :action => "edit"
  post "/update_improvement_plan/:id", :controller => "improvement_plans", :action => "update"

  # DELETE
  get "/delete_improvement_plan/:id", :controller => "improvement_plans", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
