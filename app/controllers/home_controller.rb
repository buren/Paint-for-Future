class HomeController < ApplicationController
  def index
  	@partners = Video.order("created_at desc")
	  @messages = Message.order("created_at desc")
  end

end
