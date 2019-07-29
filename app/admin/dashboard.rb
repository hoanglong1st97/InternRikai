ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
  
  content title: proc { I18n.t("active_admin.dashboard") } do
  columns do
    # section "Daily Reports", :priority => 1 do
    column do
      panel "Daily reports" do
        table_for Report.order("id desc").limit(15) do
          column :id
          column "Title", :title do |report|
            link_to report.title, [:admin,report]
          end
          column :user, :sortable => :user
          column :created_at
        end
      end
    end
    column do
      panel "Recent Courses" do
        table_for Course.order("id desc").limit(15) do
          column :id
          column "Name", :name do |course|
            link_to course.name, [:admin,course]
          end
          column :created_at
        end
      end
    end
  end
  
  end


  

end
