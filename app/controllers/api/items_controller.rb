class API::itemsController < ApiController

  before_action :authenticated?

   def index
     items = Item.all
     render json: items, each_serializer: ItemsSerializer
   end

     def new
       @item = item.new
     end

      def create
       items = Item.new(user_params)
       if list.save
         render json: item
       else
         render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
       end
     end

     def update
       item = Item.find(params[:id])
       if Item.update(item_params)
         render json: item
       else
         render json: { errors: item.errors.full_messages} , status: :unprocessable_entity
       end
     end

     private

     def user_params
       params.require(:item).permit(:user_id, :item)
     end
   end
