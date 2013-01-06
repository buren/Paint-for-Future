class GoalsController < ApplicationController

  # GET /goals
  # GET /goals.json
  def index
    @goals = Goal.all
    @partners = Video.order("position asc")
    @messages = Message.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @goals }
    end
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    @goal = Goal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @goal }
    end
  end
end
