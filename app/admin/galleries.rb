ActiveAdmin.register Gallery do

	form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Gallery", :multipart => true do
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image"
      f.input :description, :hint => "Description for image"
      f.input :video, :hint => "<a id=''fancybox'' and rel=''gallery-images'' href=''link'' title=''any title''></a>"
    end
    f.buttons
  end

  index do
    column "Image" do |gallery|
      image_tag gallery.image_url(:thumb).to_s if gallery.image?
    end
    column "Description" do |gallery|
      link_to gallery.description, admin_gallery_path(gallery)
    end
    column "Video" do |gallery|
      gallery.video.html_safe
    end
    default_actions
  end
  
end
