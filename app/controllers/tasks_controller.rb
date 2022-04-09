class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    #  display form with empty fields
    @task = Task.new
  end

  def create
    # create new task with details entered by user
    @task = Task.new(task_params)   # (params[:task]) this will raise ActiveModel::ForbiddenAttributesError
    @task.save
    redirect_to task_path(@task.id) # show task
  end

  private

  # Strong Params
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
