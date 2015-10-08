get '/' do
  if not session[:user_id]
    erb :'/index'
  else
    redirect "/questions"
  end
end

get '/users/login' do

  erb :'/users/login'
end

get '/users/register' do
  erb :'/users/register'
end

post '/users/register' do
  @user = User.new(params[:user])
  if @user.save
    auth_login(@user)
    redirect "/"
  else
    erb :'/users/register'
  end

end

post '/users/login' do
  @user = User.find_by(email: params[:email])
  if @user.password == params[:password]
    auth_login(@user)
    redirect "/"
  else
    erb :'/users/login'
  end
end

get '/logout' do
  session.destroy
  redirect '/'
end
