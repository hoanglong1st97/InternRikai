ActiveAdmin.register Lesson do
  permit_params :chapter, :content, :course_id
  index do
    selectable_column
      column :id
      column :chapter, :sortable => :chapter
      column :course, :sortable => :course
      column :created_at ,:sortable=> :created_at
      actions
  end
  form do |f|
      f.inputs do
        f.input :chapter
        f.input :content, as: :html_editor
        f.input :course
      end
      f.actions
  end
end
