xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
	xml.channel do
		xml.title "Paint for Future - News"
		xml.description "News for Paint for Future"
		xml.link posts_url

		@posts.each do |post|
			xml.item do 
				xml.title post.sub_title
				xml.description post.content.html_safe
				xml.pubDate post.created_at.to_s(:rfc822)
				xml.link post_url(post)
				xml.guid post_url(post)
			end
		end
	end
end