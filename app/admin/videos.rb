ActiveAdmin.register Video, :as => "Partners" do
  menu :parent => "Informational"

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
    column "Title" do |partner|
     link_to partner.title, admin_partner_path(partner) 
    end
    column "logo" do |partner|
      image_tag partner.logo.html_safe if partner.logo?
    end
    column "description" do |partner|
      partner.description.html_safe
    end
    default_actions
  end

  action_item :only => :show do
    link_to('View on site', videos_path)
  end
    action_item :only => :index do
    link_to('View on site', videos_path)
  end

end
