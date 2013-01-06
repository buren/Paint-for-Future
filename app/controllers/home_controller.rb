class HomeController < ApplicationController
  def index
  	@partners = Video.order("position asc")
    messages = Message.order("created_at desc")
    @homepage_message = nil
    messages.each do |message|
    	@homepage_message = message if message.message_type = "Homepage Message"
    end
  end

  def sitemap
  	@posts = Post.all
  	@contacts = Contact.all
  	@galleries = Gallery.all
  end

end
