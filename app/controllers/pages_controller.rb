class PagesController < ApplicationController

  def home
    @projects = Project.all
  end

  def contact
  end

  def web
    @projects = Project.all
  end

  def woodwork
    @projects = Project.all
  end

end