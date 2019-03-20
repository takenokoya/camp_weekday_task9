class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  # whereメソッドを改善(真偽値判定後に並び替え)
  def index
    @tasks = Task.where(is_display: true).order(created_at: :desc).limit(5)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "タスクを登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: "タスクを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def hide
    @tasks = Task.where(is_display: false)
  end

  private

  # ストロングパラメーターにis_displayを追加
  # 本Appではis_displayを操作する入力フォームはないものの、permitしてもセキュリティ上の問題はないと思ったので拡張性を考慮して追加
  def task_params
    params.require(:task).permit(:title, :memo, :is_display, :status)
  end

  def set_task
    @task = Task.find(params[:id])
  end


end
