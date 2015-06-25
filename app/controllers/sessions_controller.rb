# view sessions =========================================================

get '/session_viewer' do
	session.inspect
end

# sign in to webpage ====================================================
get '/signin' do
  erb :'/sessions/sign_in', layout: false
end

# search for user =======================================================

post '/signin' do
	@user = User.where(username: params[:username]).first

	if @user && (@user.password == params[:password])
		session[:user_id] = @user.id
		redirect '/'
	else
		@sign_in_error = "Username or password invalid. Please try again."
		erb :'/sessions/sign_in'
	end
end

# sign out of the webpage ===============================================

delete '/signout' do
  session[:user_id] = nil
  redirect '/'
  # erb :'/sessions/sign_out'
end

# sign up to webpage ====================================================

get '/signup' do
  if current_user
    erb :'/users/user_account'
  else
    content_type :html
    erb :'/sessions/sign_up', layout: false
  end
end

# save new user ========================================================

post '/signup' do
  if params[:password] == params[:confirm_password]
    new_user = User.new(first_name:   params[:first_name],
                        last_name:    params[:last_name],
                        username:     params[:username],
                        email:        params[:email],
                        encrypted_pw: params[:password]
                        )
    new_user.password = params[:password]

    if new_user.save
      session[:user_id] = new_user.id
      redirect '/'
    else
      @sign_up_errors = new_user.errors.messages
      erb :'/sessions/sign_up'
    end
  else
    @password_error = "Oops! Your passwords don't match, please try again."
    erb :'/sessions/sign_up'
  end
end

# navigate to user account ==============================================

get '/account/:user_id' do
  erb :'/users/user_account'
end
