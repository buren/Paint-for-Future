ActiveAdmin::Dashboards.build do

  section "Recent News" do
    table_for Post.order("created_at desc").limit(5) do
      column "Name" do |post|
        link_to post.name, admin_post_path(post)
      end
      column "Title" do |post|
         link_to post.title, admin_post_path(post)
      end
      column "Content" do |post| 
        truncate(post.content, :length => 60, :omission => '...')
      end
    end
    strong { link_to "All posts", admin_posts_path }
  end
end
