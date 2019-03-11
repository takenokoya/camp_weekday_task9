class TasksController < ApplicationController
  def index
    @tasks = Task.order(created_at: :desc).limit(5)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to @task
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def hide
  end

  private

  def task_params
    params.require(:task).permit(:title, :memo, :status)
  end

end
