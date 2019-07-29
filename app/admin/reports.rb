ActiveAdmin.register Report do
  permit_params :title, :content, :user_id
  index do
      selectable_column
      column :id
      column :title, :sortable => :title
      column :user, :sortable => :user
      column :created_at ,:sortable=> :created_at
      actions
  end
  form do |f|
      f.inputs do
        f.input :title
        f.input :content, as: :html_editor
        f.input :user
      end
      f.actions
  end
end
