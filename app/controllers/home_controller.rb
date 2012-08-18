class HomeController < ApplicationController
  def index
  	@partners = Video.order("created_at desc")
  end

end
