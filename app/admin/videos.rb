ActiveAdmin.register Video do
  menu :label => "Partners"

  form do |f|
    f.inputs "Partners" do
      f.input :title
      f.input :logo, :as => :url, :hint => "Provide the url to the company logo"
      f.input :homepage, :as => :url, :hint => "The partners homepage (http://www.example.com)"
      f.input :homepage_slogan, :hint => "Slogan for the homepage"
      f.input :description, :hint => "A few words about the partner"
    end
    f.buttons
  end
 
 index do 
  column "Title" do |video|
   link_to video.title, admin_video_path(video) 
  end
  column "logo" do |video|
    image_tag video.logo.html_safe if video.logo?
  end
  column "description" do |video|
    video.description.html_safe
  end
  default_actions
 end

  action_item :only => :show do
    link_to('View on site', videos_path)
  end

end
