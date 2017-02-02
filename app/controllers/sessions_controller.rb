class SessionsController < ApplicationController
  def new
  end

  def create
    user = Admin.find_by_email(params[:email])
     # If the admin exists AND the password entered is correct.
     if admin && admin.authenticate(params[:password])
       # Save the user id inside the browser cookie. This is how we keep the admin
       # logged in when they navigate around our website.
       session[:admin_id] = admin.id
       redirect_to '/'
     else
       redirect_to '/login'
     end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to '/login'
  end
end
