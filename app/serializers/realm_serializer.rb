class RealmSerializer < ActiveModel::Serializer

  embed :ids, include: true

  attributes :id, :name,
             :realm_type,
             :created_at, :updated_at

#  has_many :hosts
#  has_many :hostgroups

end