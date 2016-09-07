class Api::ListsController < ApiController

  before_action :authenticated?

   def index
     lists = List.all
     render json: lists, each_serializer: ListSerializer
   end

  def new
    @list = List.new
  end

   def create
    lists = List.new(user_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    list = List.find(user_params)
    if list.update(list_params)
      render json: list
    else
      render json: { errors: list.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:list).permit(:name, :list)
  end
end
