class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :personal_info, :team, :stats, :league
  belongs_to :user
end
