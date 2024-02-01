ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :name, :mobile, :address, :password, :password_confirmation
  form do |f|
    f.inputs "User" do
      f.input :email
      f.input :name
      f.input :mobile
      f.input :address
      f.input :password
      f.input :password_confirmation

    end
    f.actions
  end
  
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :mobile, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
