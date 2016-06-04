module SessionsHelper
    
  # Logs in the given user.
  def log_in(login)
    session[:user_id] = login.id
  end

  # Remembers a user in a persistent session.
  def remember(login)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
  
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Login.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Forgets a persistent session.
  #def forget(login)
  #  login.forget
  #  cookies.delete(:user_id)
  #  cookies.delete(:remember_token)
  #end

  # Logs out the current user.
  def log_out
    #forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
