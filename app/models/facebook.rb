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
    "#{oauth_base_url}"
  end

  private

  def oauth_base_url
    "https://www.facebook.com/dialog/oauth?"
  end





end
