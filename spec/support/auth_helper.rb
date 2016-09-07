module AuthHelper
  def http_login
    user = 'tom'
    pw = 'password'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(tom,password)
  end
end
