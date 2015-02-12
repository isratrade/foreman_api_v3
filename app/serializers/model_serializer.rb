class ModelSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name,
             :info, :vendor_class, :hardware_model,
             :created_at, :updated_at

 # has_many :hosts

end