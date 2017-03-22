get '/sessions' do
  # literally just give them the login form
end

post '/sessions' do
# set our @user = User.new(params[])
# if @user.save
#   session[:id] = @user.id

#   if request.xhr?
#     give them the partial
#   else
#     redirect them to idk. the show page for that user? /users/#{@user.id}"
#   end

# else

  # if request.xhr?
  #   @errors = "either your username or password was incorrect"
  #   erb file for logging in, to which we must pass a local variable for our errors?
  # else
  #   @errors = "either your username or password was incorrect"
  #   either redirect them, or better yet,
  #   reshow them the login form, (erb file) with errors displayed
  # end
# end
end

delete '/sessions' do
  session[:id] = nil
  # redirect to home maybe? idk
end
