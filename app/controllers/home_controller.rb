class HomeController < ApplicationController
  def index
    gon.projects = [ "#paid", "HungryBelly", "ColourMatch", "CLYWmparison", "Percentext", "Schedulr", "Mars Rover", "This Portfolio", "Conway's Game of Life", "Earthy" ]
  end
end
