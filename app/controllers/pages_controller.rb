class PagesController < ApplicationController

  def home
    @projects = Project.all
  end

  def about
  end

  def portfolio
    @projects = Project.all
  end

  def sketchbook
    @projects = Project.all
  end

  def shopping
    @projects = Project.all
  end

end