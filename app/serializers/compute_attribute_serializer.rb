class ComputeAttributeSerializer < ActiveModel::Serializer
  attributes :id, :name, :vm_attrs, :created_at, :updated_at
end
