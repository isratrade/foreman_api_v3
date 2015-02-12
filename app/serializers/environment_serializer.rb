class EnvironmentSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :created_at, :updated_at

#  has_many :hosts
  # has_many :hostgroups

  # has_many :puppetclasses
  # has_many :config_templates
  # has_many :template_combinations

end
