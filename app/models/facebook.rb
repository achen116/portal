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

  private

  def oauth_base_url
    "https://www.facebook.com/dialog/oauth?"
  end

  def api_base_url

  end

  def auth_request_params
    "/#{uri_encode(authorization_params)}"
  end

  def authorization_params
    p "^" * 100
    p self.redirect_uri

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
    p "8" * 100
      uri << "&#{k}=#{v}"
      uri
    end

  end


end
