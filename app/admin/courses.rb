ActiveAdmin.register Course do
  permit_params :name, :content

  index do
      selectable_column
      id_column
      column :name
      column :created_at
      actions
    end
  
    filter :name
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :content, as: :html_editor
      end
      f.actions
    end

end
