class TasksController < ApplicationController
  before_action :set_user
  before_action :set_task, only: %i(show edit update destroy)
  
  def index
    # @user = User.find(params[:user_id])
    @tasks = @user.tasks
  end
  
  def show
    # @user = User.find(params[:user_id])
    # @task = @user.tasks.find_by(id: params[:id])
    @task = @user.tasks.find_by(params[:id])
  end
  
  def new
    @user = User.find(params[:user_id])
    @task = Task.new
  end
  
  def create
    @task = Task.new
    # @user = User.find(params[:user_id])
    # @task = Task.save
    @task = @user.tasks.build(task_params)
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url @user
    else
      render :new
    end
  end
  
  def edit
    # @user = User.find(params[:user_id])
    @task = Task.find(params[:id])
  end
  
  def update
    # @user = User.find(params[:user_id])
    # @task = Task.find_by(id: params[:user_id], id: params[:id])
    @task = @user.tasks.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = "タスクを更新しました。"
      redirect_to user_task_url(@user, @task)
    else
      render :edit
    end
  end  
  
  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    flash[:success] = "タスクを削除しました。"
    redirect_to user_tasks_url(@user)
  end
  
  private
    
    def task_params
     params.require(:task).permit(:name, :description)
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end
    
    def set_task
      unless @task = @user.tasks.find_by(id: params[:id])
        flash[:danger] = "権限がありません。"
        redirect_to user_tasks_url @user
      end
    end
end
