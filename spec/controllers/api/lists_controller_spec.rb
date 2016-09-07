require 'rails_helper'

RSpec.describe Api::ListsController, type: :controller do


  describe 'GET index' do
    it "returns all users" do
      credentials = ActionController::HttpAuthentication::Basic.encode_credentials 'tom', 'password'
request.env['HTTP_AUTHORIZATION'] = credentials
      get :index, format: :json
    end
  end

end
