class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :web, :woodwork]

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

  def not_found
  end

end