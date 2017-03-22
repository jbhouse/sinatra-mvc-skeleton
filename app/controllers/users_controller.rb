get '/users' do
# display all the users
# :'/users/index'
end

get '/users/new' do
# get a form for a new user
# erb :'/users/new'
end

get '/users/:id' do
#to get a specific user
# :'/users/show'
end

post '/users' do
#posting (creating) a new user
#   @user = User.new(params[:user])
#   @user.resource = params[:user][:resource]
#   @user.save
end

put '/users/:id' do
  # let's control who can edit what. aka this can only be edited by that person
  # @user = User.find(params[:id])
  # if logged_in? && current_user.id == @user.id
    # @user.update(params[:user])
      # if @user.valid?
        # redirect them (to their show page, to them home page. idk what you want human)
      # else
        # @errors = "those changes didnt' save correctlysilly human. beep boop"
      # end
  # else
      # @errors = "i can't let you do that dave. you arent this user and cant edit their profile."
  # end
end

delete '/users/:id' do
#deleting a specific user
end
