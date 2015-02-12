class OperatingsystemSerializer < ActiveModel::Serializer

  embed :ids, include: true

  attributes :id, :name,
             :description, :major, :minor, :family, :release_name
             :created_at, :updated_at

#  has_many :hosts
  # has_many :hostgroups
  # has_many :images
  # has_many :media
  # has_many :ptables
  # has_many :architectures
  # has_many :puppetclasses
  # has_many :config_templates
  # has_many :os_default_templates
  # has_many :parameters

end

