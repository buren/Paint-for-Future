class PostsController < ApplicationController
  
  # GET /posts
  # GET /posts.json
  def index
    #nil if not logged in as admin
    @is_admin = current_admin_user
    if @is_admin != nil
      @posts = Post.order("created_at desc").page(params[:page]).per(10)
    else
      @posts = Post.published_posts.order("created_at desc").page(params[:page]).per(10)
    end

    @messages = Message.order("created_at desc")

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

    @is_admin = current_admin_user

    if params[:content] != nil && @is_admin != nil
      mercury_post = @post
      mercury_post.title = params[:content][:post_title][:value]
      mercury_post.content = params[:content][:post_content][:value]
      mercury_post.sub_title = params[:content][:post_sub_title][:value] if params[:content][:post_sub_title] != nil
      
      if params[:content][:post_publish][:value] != nil
        publish = params[:content][:post_publish][:value].chomp
        if publish.downcase == "true" 
          mercury_post.publish = true
        else
          mercury_post.publish = false
        end
      end 
      mercury_post.save!
      render text: ""
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @post }
      end
    end
  end

end
