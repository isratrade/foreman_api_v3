class MediumSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name,
             :path, :os_family,
             :media_path, :config_path, :image_path,
             :created_at, :updated_at

#  has_many :hosts
#  has_many :hostgroups
#  has_many :operatingsystems

end