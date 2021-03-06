class ProjectsController < ApplicationController
  
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  #before_filter :validate_user, only: [:show]

  # GET /projects
  # GET /projects.json
  def index
      @projects = current_user.projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    #@user = current_user
    #@project.user = User.find()
    #puts "AAAAA #{Project.find(params[:id]).users}"
    #redirect_to root_path unless current_user.id.to_s == Project.find(params[:id]).users
    #flash[:notice] = "Você não tem acesso à essa página"
  end

  # GET /projects/new
  def new
    if(current_user)
      @project = Project.new
    else
      flash[:notice] = "Voce precisa logar para criar um projeto!"
      redirect_to root_path
    end
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.users << current_user
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name_project, :start_date_project, :user_ids, :description)
    end

   # def validate_user
      #redirect_to root_path unless current_user.id.to_s == @project.user
     # flash[:notice] = "Você não tem acesso à essa página"
    #end
end
