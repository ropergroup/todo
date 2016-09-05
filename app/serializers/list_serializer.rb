class ListSerializer < ActiveModel::Serializer


  binding.pry
  attributes :list, :created_at


  def list

    object.list
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
