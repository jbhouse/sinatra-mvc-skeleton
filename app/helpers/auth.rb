helpers do

  def current_user
	if session[:user_id]
	  return User.find(session[:user_id])
	else
	  return nil
	end
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.clear
  end

  def logged_in?
    session[:user_id] != nil
  end