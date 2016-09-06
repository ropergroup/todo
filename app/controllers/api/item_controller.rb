class API::itemsController < ApiController

  before_action :authenticated?

   def index
     items = Item.all
     render json: items, each_serializer: ItemsSerializer
   end
end
