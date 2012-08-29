ActiveAdmin.register Contact do
  menu :priority => 3

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Contacts", :multipart => true do
      f.input :name, :hint => "Name Surname"
      f.input :email, :hint => "your_name@paintforfuture.org"
      f.input :phone_number, :hint => "+(46) 7XX XX XX XX"
      f.input :website, :hint => "Be aware this link will show instead of the phone number on the Contacts listview"
      f.input :description, :hint => "Desrcribe yourself in a few words"
      f.input :job_title, :hint => "Your job title"
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image with height=250 and width=150"
    end
    f.buttons
  end

  index :as => :grid, :columns => 2 do |contact|
      link_to(image_tag(contact.image_url(:thumb)), admin_contact_path(contact))
      div do
        a :href => admin_contact_path(contact) do
          image_tag(contact.image_url(:thumb))
        end
      end
      a truncate(contact.name), :href => admin_contact_path(contact)
  end
  

  action_item :only => :show do
    link_to('View on site', contacts_path)
  end

  action_item :only => :index do
    link_to('View on site', contacts_path)
  end

end
