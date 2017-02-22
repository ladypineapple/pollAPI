class PollSerializer < ActiveModel::Serializer
  attributes :id, :title, :question, :option1, :option2
  def editable
  scope == object.user
end
end
