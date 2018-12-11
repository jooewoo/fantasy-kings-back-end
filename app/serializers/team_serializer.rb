class TeamSerializer < ActiveModel::Serializer
  attributes :id
  has_one :stat
  has_one :user
end
