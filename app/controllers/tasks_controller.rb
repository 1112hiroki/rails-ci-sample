class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: '登録しました'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy!
    redirect_to tasks_path, notice: '削除しました'
  end

  private

  def task_params
    params.require(:task).permit(:title, :body)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end