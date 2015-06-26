# facebook sign in ====================================================
get '/facebook_login' do
  redirect Facebook.authorization_url
end

get '/oauth' do
  access_token = Facebook.get_access_token(params["code"])

end
