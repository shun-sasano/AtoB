ActiveAdmin.register Curriculum do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :image, :description
 form :html => { :enctype => "multipart/form-data" } do |f|
  f.inputs 'curriculum' do
      f.input :title
      f.input :description
      f.input :image, :as => :file
      f.actions
    end
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
