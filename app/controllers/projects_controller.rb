class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to root_path(@project), notice: "Le nouveau projet a bien été créé"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project), notice: "Le projet a bien été mis à jour"
  end

  def destroy
    @project.destroy
    redirect_to root_path(@project), notice: "Le projet a bien été supprimé"
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :is_woodworking, :is_web)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

end
