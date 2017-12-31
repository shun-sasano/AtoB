ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :url, :curriculum_id, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs '記事' do
      f.input :title
      f.input :url
      f.input :curriculum_id
      f.input :user_id
      f.actions
    end
  end
end
