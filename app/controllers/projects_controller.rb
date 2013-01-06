class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json

  def index
    @projects = Project.order("created_at asc").page(params[:page])

    @why = Project.where(:id => 4)
    @how = Project.where(:id => 5)
    @what = Project.where(:id => 6)
    
    @partners = Video.order("position asc")
    @messages = Message.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
end
