Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "photos#index"
  # Routes for the Obsession resource:

  # CREATE
  get("/obsessions/new", { :controller => "obsessions", :action => "new_form" })
  post("/create_obsession", { :controller => "obsessions", :action => "create_row" })

  # READ
  get("/obsessions", { :controller => "obsessions", :action => "index" })
  get("/obsessions/:id_to_display", { :controller => "obsessions", :action => "show" })

  # UPDATE
  get("/obsessions/:prefill_with_id/edit", { :controller => "obsessions", :action => "edit_form" })
  post("/update_obsession/:id_to_modify", { :controller => "obsessions", :action => "update_row" })

  # DELETE
  get("/delete_obsession/:id_to_remove", { :controller => "obsessions", :action => "destroy_row" })
  get("/delete_obsession_from_victim/:id_to_remove", { :controller => "obsessions", :action => "destroy_row_from_victim" })
  get("/delete_obsession_from_stalker/:id_to_remove", { :controller => "obsessions", :action => "destroy_row_from_stalker" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  get("/likes/new", { :controller => "likes", :action => "new_form" })
  post("/create_like", { :controller => "likes", :action => "create_row" })
  post("/create_like_from_photo", { :controller => "likes", :action => "create_row_from_photo" })

  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  get("/likes/:id_to_display", { :controller => "likes", :action => "show" })

  # UPDATE
  get("/likes/:prefill_with_id/edit", { :controller => "likes", :action => "edit_form" })
  post("/update_like/:id_to_modify", { :controller => "likes", :action => "update_row" })

  # DELETE
  get("/delete_like/:id_to_remove", { :controller => "likes", :action => "destroy_row" })
  get("/delete_like_from_photos/:id_to_remove", { :controller => "likes", :action => "destroy_row_from_photos" })
  get("/delete_like_from_users/:id_to_remove", { :controller => "likes", :action => "destroy_row_from_users" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })
  get("/delete_photo_from_users/:id_to_remove", { :controller => "photos", :action => "destroy_row_from_users" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
