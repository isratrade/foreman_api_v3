class ComputeAttributeSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :vm_attrs, :created_at, :updated_at
#  has_one :compute_resource
#  has_one :compute_profile
end
