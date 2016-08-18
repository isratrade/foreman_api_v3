class RoleSerializer < ActiveModel::Serializer

  attributes :id, :name, :builtin

  # TODO - permissions
end