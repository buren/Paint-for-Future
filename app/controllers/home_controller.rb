class HomeController < ApplicationController
  def index
  	@partners = Video.order("created_at desc")
    @messages = Message.order("created_at desc")
  end

  def sitemap
  	@posts = Post.all
  	@contacts = Contact.all
  	@galleries = Gallery.all
  end

end
