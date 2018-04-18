class TasksController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @task = @course.tasks.new
  end

  def create
    @course = Course.find(params[:course_id])
    @task = @course.tasks.new(task_params)
    if @task.save
      redirect_to course_path(@task.course)
    else
      render :new
    end
  end

  private
    def task_params
      params.require(:task).permit(:description)
    end

end
