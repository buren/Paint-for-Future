ActiveAdmin.register AdminUser do

 index do 
  column "Email" do |admin_user|
    link_to admin_user.email, admin_admin_user_path(admin_user)
  end
  column :current_sign_in_at
  column :last_sign_in_at
  column :sign_in_count
  default_actions
 end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
