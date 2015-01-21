class ProjectsController < ApplicationController
  protect_from_forgery except: :show
  
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # renders show.html.erb
      format.js   # renders show.js.erb
    end
  end
end
