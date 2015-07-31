ActiveAdmin.register User do
  permit_params :username, :email, :phone, :password, :password_confirmation
  
  index do
    selectable_column
    id_column
    column :username
    column :email
    column :phone
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :admin
    actions
  end
  
  form do |f|
    f.inputs "User Details" do
      f.input :username
      f.input :email
      f.input :phone
      f.input :password
      f.input :password_confirmation
      f.input :admin, :label => "Administrator"
    end
    actions
  end

end
