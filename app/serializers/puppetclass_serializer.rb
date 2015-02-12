class PuppetclassSerializer < ActiveModel::Serializer

  embed :ids, include: true

  attributes :id, :name,
             :created_at, :updated_at

 # has_many :hosts
 # has_many :hostgroups
  # has_many :environments
  # has_many :config_groups
#  has_many :lookup_keys
#  has_many :class_params

end
