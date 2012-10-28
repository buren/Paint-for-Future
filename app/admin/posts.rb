ActiveAdmin.register Post do
  menu :label => "News"
  menu :priority => 1

  scope :all, :default => true
  scope :published_posts
  scope :unpublished_posts

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Post", :multipart => true do
      f.input :name, :as => :select, :collection => ["FREDRIK BECK", "SUSANNE HOLMSATER", "LUCAS LENNIG", "DANIEL LEKSELL", "MARTIN GREWIN"]
      f.input :title
      f.input :sub_title, :hint => "A smaller, bold, title, to be displayed directly under the title"
      f.input :published_at
      f.input :content, :hint => "Just fill in the text you want and edit later"
      f.input :remote_image_url, :as => :url, :hint => "Provide URL to jpg, giff or png image"
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image"
      f.input :publish, :hint => "If selected the post will be published"
    end
    f.buttons
  end
  
  index do
    column "Image" do |post|
      image_tag post.image_url(:thumb).to_s if post.image?
    end
    column "Sub-title" do |post|
      link_to post.sub_title, admin_post_path(post) if post.sub_title?
    end
    column "Content" do |post|
      link_to post.content.html_safe, admin_post_path(post)
    end
    default_actions
  end

  show do |post|
    attributes_table do
      row :image do
        image_tag post.image_url(:thumb).to_s if post.image?
      end
      row :title do
        post.title
      end
      row :published_at do
        post.published_at
      end
      row :content do
        raw post.content
      end
    end
    active_admin_comments
  end

  action_item do
    link_to('View on site', posts_path)
  end
  
  action_item :only => :show do
    link_to('New post', "/admin/posts/new")
  end

end
