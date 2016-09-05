class API::ListsController < ApiController

  before_action :authenticated?

   def index
     render json: lists, each_serializer: ListSerializer
   end
end
