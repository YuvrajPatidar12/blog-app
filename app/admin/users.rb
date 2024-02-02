ActiveAdmin.register User do
  permit_params :email, :name, :mobile, :address, :password, :password_confirmation, role_ids: []
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :mobile
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :address
    column :roles
    actions
  end
  
  filter :email
  filter :name
  filter :roles
  filter :created_at
  
  form do |f|
    f.inputs "User" do
      f.input :email
      f.input :name
      f.input :mobile
      f.input :address
      f.input :password
      f.input :password_confirmation
      f.input :roles, as: :check_boxes#, collection: Role.all.map{|role| [role.name, role.id]}
    end
    f.actions
  end
end
