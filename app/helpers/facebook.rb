module Facebook
  extend self
  attr_accessor :key, :secret, :redirect_uri, :response_type

  def setup(params)
    self.key = params[:key]
    self.secret = params[:secret]
    self.redirect_uri = params[:redirect_uri]
    self.response_type = params[:response_type] || "code"
  end

  def authorization_url
    "#{oauth_base_url}#{auth_request_params}"
  end

  def get_access_token(authorization_code)
    p "& " * 50
    p params = uri_encode(access_token_params(authorization_code))
    p "& " * 50
    
    response = HTTParty.get("#{api_base_url}access_token?#{params}") #not returning parsed response as hash :(
    p "- - " * 50
    p response
    p "- - " * 50
    # p response.parsed_response
    p Rack::Utils.parse_nested_query(response.parsed_response)["access_token"]
    p "- - " * 50

  end

  def user_profile(access_token)
    # p "/" * 100
    # profile = HTTParty.get("#{api_base_url}debug_token?input_token=#{state}=#{access_token}")
    # p "-- " * 100
    # profile.parsed_response["debug_token"]
    # p "/" * 100
  end

  private

  def oauth_base_url
    "https://www.facebook.com/dialog/oauth?/"
  end

  def api_base_url
    "https://graph.facebook.com/oauth/"
  end

  def auth_request_params
    "#{uri_encode(authorization_params)}"
  end

  def authorization_params
    {
      client_id: self.key,
      redirect_uri: self.redirect_uri,
      response_type: self.response_type,
      state: state
    }
  end

  def state
    SecureRandom.base64
  end

  def uri_encode(params)
    params.reduce("") do |uri, (k,v)|
      uri << "&#{k}=#{v}"
      uri
    end
  end

  def access_token_params(authorization_code)
    {
      # grant_type: "authorization_code",
      client_id: self.key,
      redirect_uri: self.redirect_uri,
      client_secret: self.secret,
      code: authorization_code,
    }
  end

end
