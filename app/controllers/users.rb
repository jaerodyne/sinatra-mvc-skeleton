get '/users/new' do
  erb :'users/new'
end

post '/users' do
  p params
  @user = User.new(params['user'])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end


get '/users/:id' do
  @user = User.find(params[:id])
  erb :"users/show"
end 

