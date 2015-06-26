# facebook sign in ====================================================
get '/facebook_login' do
  redirect Facebook.authorization_url
end

get '/oauth' do
  access_token = Facebook.get_access_token(params["code"])
  p "*" * 100
  p user = User.create_from_facebook(access_token)
  p "*" * 100
  redirect "/"
end