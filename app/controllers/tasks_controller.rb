# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params_to_create)
    @task.save
    redirect_to task_path(@task)
  end

  def edit; end

  def update
    @task.update(task_params_to_update)
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
  end

  private

  def task_params_to_create
    params.require(:task).permit(:title, :details)
  end

  def task_params_to_update
    params.require(:task).permit(:title, :details, :completed, :progress)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
