class ProjectsController < ApplicationController
  def show
    @project = Project.includes(:images).find(params[:id]).to_json

    render json: @project
  end
end
