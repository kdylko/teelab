ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :photo_file_name, :_destroy, :product_id, :photo
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form  :html => { :multipart => true } do |f| 
  

	f.input :product_id, :label => 'Product', :as => :select, :collection => Product.all.map{|u| ["#{u.title}", u.id]}
   	f.file_field :photo

 
  f.actions
end 

end
