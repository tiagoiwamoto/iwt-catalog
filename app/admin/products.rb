ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index as: :grid do |product|
    link_to image_tag(product.avatar.url(:thumb)), admin_product_path(product)
  end
  
end
