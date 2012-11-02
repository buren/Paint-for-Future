ActiveAdmin.register Contact do
  menu :priority => 3

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Contact", :multipart => true do
      f.input :name, :hint => "Joe Bloggs"
      f.input :email, :hint => "joe.bloggs@paintforfuture.org"
      f.input :position, :as => :select, :collection => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], :hint => "The desired position in the contact list. Two contacts can have the same position"
      f.input :phone_number, :hint => "+(46) 7XX XX XX XX"
      f.input :website, :hint => "Be aware this link will show instead of the phone number on the Contacts list view"
      f.input :description, :hint => "Desrcribe yourself in a few words"
      f.input :job_title, :hint => "Your job title"
      f.input :image, :as => :file, :hint => "Select any jpg, giff or png image with height=400px, width=320px OR height=200px, width=160px"
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
