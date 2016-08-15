get '/' do
  redirect '/login'
end

get '/login' do
  erb :'sessions/login'
end

post '/login' do
  @user = User.find_by(email: params['user'][:email])
  if @user && @user.authenticate(params['user'][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Something went wrong, just like it always does"]
    erb :"sessions/login"
  end
end

get '/logout' do
  # delete the user_id from the session
  session.delete(:user_id)
  redirect '/'
end
