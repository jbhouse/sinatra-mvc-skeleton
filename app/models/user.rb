require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

	include BCrypt

  def authenticate(password)
  	self.password == password
  end	

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

# Authenticating a user

# def login
#   @user = User.find_by(:email params[:email])
#   if @user.password == params[:password]
#     session[:user_id] = user.id
#	  redirect
#   else
#     redirect to home_url
#   end
# end

# Creating an account

# def create
#   @user = User.new(params[:user])
#   @user.password = params[:password]
#   @user.save
# end