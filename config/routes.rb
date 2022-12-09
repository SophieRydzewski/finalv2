Rails.application.routes.draw do

  # HOMEPAGES

  get("/", { :controller => "application", :action => "homepage" })

  get("/home", { :controller => "application", :action => "home"})

  # USERS

  get("/users", { :controller => "application", :action => "user_roster"})

  # PROFILE

  get("/profile", { :controller => "application", :action => "user_profile"})

  # Routes for the User sport resource:

  # CREATE
  post("/insert_user_sport", { :controller => "user_sports", :action => "create" })
          
  # READ
  get("/user_sports", { :controller => "user_sports", :action => "index" })
  
  get("/user_sports/:path_id", { :controller => "user_sports", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_sport/:path_id", { :controller => "user_sports", :action => "update" })
  
  # DELETE
  get("/delete_user_sport/:path_id", { :controller => "user_sports", :action => "destroy" })

  #------------------------------

  # Routes for the Sport resource:

  # CREATE
  post("/insert_sport", { :controller => "sports", :action => "create" })
          
  # READ
  get("/sports", { :controller => "sports", :action => "index" })
  
  get("/sports/:path_id", { :controller => "sports", :action => "show" })
  
  # UPDATE
  
  post("/modify_sport/:path_id", { :controller => "sports", :action => "update" })
  
  # DELETE
  get("/delete_sport/:path_id", { :controller => "sports", :action => "destroy" })

  #------------------------------

  # Routes for the Reply resource:

  # CREATE
  post("/insert_reply", { :controller => "replies", :action => "create" })
          
  # READ
  get("/replies", { :controller => "replies", :action => "index" })
  
  get("/replies/:path_id", { :controller => "replies", :action => "show" })
  
  # UPDATE
  
  post("/modify_reply/:path_id", { :controller => "replies", :action => "update" })
  
  # DELETE
  get("/delete_reply/:path_id", { :controller => "replies", :action => "destroy" })

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
