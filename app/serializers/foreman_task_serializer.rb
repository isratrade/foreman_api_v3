class ForemanTaskSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :label, :pending, :username, :started_at, :ended_at, :state, :result
  attributes :progress, :input, :output, :cli_example, :external_id
  attributes :humanized, :humanized_name, :humanized_input, :humanized_output, :humanized_errors
  attributes :parent_task, :sub_tasks, :running_steps, :failed_steps, :locks
  attributes :repository

  def humanized_name
    object.humanized[:action]
  end

  def humanized_input
    if object.humanized[:input].kind_of?(Array)
      object.humanized[:input].uniq.join('; ')
    else
      object.humanized[:input]
    end
  end

  def humanized_output
    object.humanized[:output]
  end

  def humanized_errors
    if object.humanized[:errors].kind_of?(Array)
      object.humanized[:errors].uniq.join('; ')
    else
      object.humanized[:errors]
    end
  end

  def repository
    object.input[:repository][:name] if object.input[:repository]
  end

end
