class PostsController < ApplicationController
  
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("created_at desc").page(params[:page]).per(10)
    @messages = Message.order("created_at desc")
    #nil if not logged in as admin
    @is_admin = current_admin_user

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.rss { render :layout => false }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

end
