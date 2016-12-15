ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :images, :image, :user_id,:title, :description, :url_name, :price, :style_id, :category, :instagram_name, :avatar_url, images_attributes: [:photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :_destroy, :iproduct_id]

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end







end