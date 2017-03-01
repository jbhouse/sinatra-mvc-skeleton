post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user.password == params[:user][:password]
    login(@user)
    redirect '/entries'
  else
    erb :'users/new'
  end
end