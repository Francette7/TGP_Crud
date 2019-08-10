module SessionsHelper
	def current_user
    @current_user 
    if session[:user_id]
    end
  end

   def log_in(user)
    session[:user_id] = user.id
  end
end
