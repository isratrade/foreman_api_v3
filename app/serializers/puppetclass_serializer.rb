class PuppetclassSerializer < ActiveModel::Serializer

  attributes :id, :name, :module_name,
             :created_at, :updated_at

  has_many :environments
  has_many :hostgroups
  has_many :smart_variables
  has_many :smart_class_parameters
end
