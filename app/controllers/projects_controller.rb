class ProjectsController < ApplicationController
  protect_from_forgery except: :show
  
  def show
    @project = Project.includes(:images).find(params[:id]).to_json

    render json: @project
  end
end
