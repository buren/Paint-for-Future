module ApplicationHelper


	def is_current_page(path)
	  "active" if current_page?(path)
	end
 # def markdown(text)
    #Markdown.new(text, :hard_wrap, :autolink).to_html.html_safe
  #  rndr = Redcarpet::Render::HTML.new(:autolink => true, :hard_wrap => true)
  #  Redcarpet::Markdown.new(text, rndr);
#  end
end
