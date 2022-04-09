class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  # /tasks/new
  def new
    #  display form with empty fields
    @task = Task.new
  end

  # /tasks/new
  def create
    # create new task with details entered by user
    @task = Task.new(task_params)   # (params[:task]) this will raise ActiveModel::ForbiddenAttributesError
    @task.save
    redirect_to task_path(@task.id) # show task
  end

  # /tasks/:id/edit
  def edit
    # display form with filled in fields
    @task = Task.find(params[:id])
  end

  # /tasks/:id/edit
  def update
    #  find the Task to be edited, update values & redirect to details page (show)
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task.id) # show task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  # Strong Params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
