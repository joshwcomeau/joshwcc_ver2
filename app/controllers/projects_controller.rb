class ProjectsController < ApplicationController
  protect_from_forgery except: :show
  
  def show
    @project = Project.find(params[:id])

    render json: @project
  end
end
