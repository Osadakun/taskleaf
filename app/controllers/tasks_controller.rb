class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    task = Task.new(tasks_params)
    task.save!
    redirect_to task_url, notice: "タスク「#{task.name}」を登録しました．"
  end

  private

  def tasks_params
    params.require(:task).permit(:name, :description)
  end
end
