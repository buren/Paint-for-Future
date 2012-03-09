ActiveAdmin.register Video do
  menu :label => "Partners"

  form do |f|
    f.inputs "Partners" do
      f.input :title
      f.input :description
    end
    f.buttons
  end
 
 index do 
  column "Title" do |video|
   link_to video.title, admin_video_path(video) 
  end
  column "description" do |video|
    video.description.html_safe
  end
  default_actions
 end
end
