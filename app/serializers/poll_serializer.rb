class PollSerializer < ActiveModel::Serializer
  attributes :id, :title, :question, :option1, :option2
end
