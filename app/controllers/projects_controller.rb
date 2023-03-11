class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project

    if @project.save
      redirect_to root_path(@project), notice: "Le nouveau projet a bien été créé"
    else
      render :new
    end
  end

  def edit
    set_project
  end

  def update
    set_project

    @project.update(project_params)
    redirect_to project_path(@project), notice: "Le projet a bien été mis à jour"
  end

  def destroy
    set_project
    @project.destroy
    redirect_to root_path(@project), notice: "Le projet a bien été supprimé"
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :is_woodworking, :is_web, photos: [] )
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
