class HomeController < ApplicationController
  def index
    gon.projects = Project.order("created_at DESC")
  end
end
