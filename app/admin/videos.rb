ActiveAdmin.register Video do
  menu :label => "Film"

  form do |f|
    f.inputs "Film" do
      f.input :title
      f.input :description
      f.input :vimeo, :as => :text
    end
    f.buttons
  end
 
 index do 
  column "Title" do |video|
   link_to video.title, admin_video_path(video) 
  end
  column :description
  default_actions
 end
end
