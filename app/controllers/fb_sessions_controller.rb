# facebook sign in ====================================================
get '/facebook_login' do
  redirect Facebook.authorization_url
end

get '/oauth' do
  access_token = Facebook.get_access_token(params["code"])
  user = User.create_from_facebook(access_token)

  session[:user_id] = user.id
  
  redirect "/account/#{user.id}"
end