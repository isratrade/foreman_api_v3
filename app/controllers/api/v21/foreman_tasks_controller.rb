module Api
  module V21
    class ForemanTasksController < ::ForemanTasks::Api::TasksController

      include Api::Version21

      def index
        @foreman_tasks = ForemanTasks::Task.limit(30).order('id desc') # TODO - temp, change in future
        render :json => @foreman_tasks, :each_serializer => ForemanTaskSerializer
      end

      def show
        @foreman_task = ForemanTasks::Task.find(params[:id])
        render :json => @foreman_task, :serializer => ForemanTaskSerializer
      end

    end
  end
end
