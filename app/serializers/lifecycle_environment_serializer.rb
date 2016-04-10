class LifecycleEnvironmentSerializer < ActiveModel::Serializer

  attributes :id, :name, :label, :description, :library, :prior_id, :prior,
             :created_at, :updated_at

  def prior_id
    prior.try(:id)
  end
  #no child node for counts:{} and permissions: {} which are in v2
end

