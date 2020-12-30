class TasksController < ApplicationController

  def index
      @tasks = Task.all
      if user_signed_in?
        @uncompleted_tasks = current_user.tasks.where(completed: false).order('priority DESC')
        @completed_tasks = current_user.tasks.where(completed: true).order('updated_at')
      end
  end

  def new
    build_task
  end

  def edit
    task
  end

  def create
    create_task
    redirect_to tasks_path
  end

  def complete
    complete_task
    redirect_to tasks_path
  end

  def update
    update_task
    redirect_to tasks_path
  end

  def destroy
    destroy_task
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(
      :title, :description, :priority, :due_date, :completed, :user_id
    )
  end

  def task
    @task ||= current_user.tasks.find(params[:id])
  end

  def build_task
    @task = current_user.tasks.new
  end

  def create_task
    @task = current_user.tasks.new task_params
    @task.save
  end

  def complete_task
    task.complete!
  end

  def update_task
    task.update(task_params)
  end

  def destroy_task
    task.destroy
  end

end
