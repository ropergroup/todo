class API::itemsController < ApiController

  before_action :authenticated?

   def index
     render json: items, each_serializer: ItemsSerializer
   end
end
