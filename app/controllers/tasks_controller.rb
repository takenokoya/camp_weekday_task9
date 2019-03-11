class TasksController < ApplicationController
  def index
  end

  def show
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
