ActiveAdmin.register Gallery do
  menu :label => "Gallery"
  menu :priority => 2


	form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Image", :multipart => true do
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image"
      f.input :description, :hint => "Description for image"
      f.input :video, :hint => "Iframe for the video"
      f.input :url_for_video, :hint => "Look in the Iframe after src= and copy the link to this field"
    end
    f.buttons
  end

  index do
    column "Image" do |gallery|
      image_tag gallery.image_url(:thumb).to_s if gallery.image?
    end
    column "Description" do |gallery|
      gallery.description.html_safe
    end
    default_actions
  end
  
  action_item :only => :show do
    link_to('New photo', new_admin_gallery)
  end

  action_item do
    link_to('View on site', galleries_path)
  end

end
