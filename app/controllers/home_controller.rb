class HomeController < ApplicationController
  def index
    gon.projects = Project.order("created_at DESC").as_json(:include => [:images])
  end
end
