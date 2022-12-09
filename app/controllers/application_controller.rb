class ApplicationController < ActionController::Base
   before_action(:load_current_user)
  
  # Uncomment line 5 in this file and line 3 in UserAuthenticationController if you want to force users to sign in before any other actions.
  #before_action(:force_user_sign_in)
  
  def homepage
    render({ :template => "home/logout_home.html.erb"})
  end

  def home
    render({ :template => "home/login_home.html.erb"})
  end

  def load_current_user
    the_id = session[:user_id]
    
    @current_user = User.where({ :id => the_id }).first
  end
  
  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

  def user_roster

    @user = User.all
    render({ :template => "home/users.html.erb"})
  end

def user_profile

  @user=User.all
  
render({ :template => "home/profile.html.erb"})
end

end
