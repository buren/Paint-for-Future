class VideosController < InheritedResources::Base
  def index
    @videos = Video.order("created_at desc").page(params[:page]).per(10)
  end
end
