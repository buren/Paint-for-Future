ActiveAdmin::Dashboards.build do

  section "Recent News", :priority => 1 do
    table_for Post.order("created_at desc").limit(5) do
      column "Title" do |post|
         link_to post.title, admin_post_path(post)
      end
      column "Content" do |post| 
        truncate(post.content, :length => 250, :omission => '...').html_safe
      end
    end
    strong { link_to "All posts", admin_posts_path }
  end


section "Site visists", :priority => 2 do
    div do
      br
      text_node %{<iframe marginwidth="0"  marginheight="0" width="600" height="350" src="http://www.embeddedanalytics.com/reports/displayreport?reportcode=1cbtqldrNU&chckcode=gan73E4bHsdhb76t3lDk2Q" type="text/html" frameborder="0" scrolling="no" title="EmbeddedAnalytics - Embed Realtime Google Analytics Charts into your Website!"></iframe>}.html_safe
    end
  end

end
