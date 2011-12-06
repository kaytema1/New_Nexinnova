ActiveAdmin.register Project do

  index do
    column :title do |project|
      link_to project.title, admin_project_path(project)
    end

    default_actions
  end
  

  show :title => :title do
    panel "Tasks" do
      table_for project.tasks do |t|
        t.column("Status") { |task| status_tag (task.is_done ? "Done" : "Pending"), (task.is_done ? :ok : :error) }
        t.column("Title") { |task| link_to task.title, admin_task_path(task) }
        t.column("Assigned To") { |task| task.admin_user.email }
        t.column("Due Date") { |task| task.due_date? ? l(task.due_date, :format => :long) : '-' }
      end
    end
  end

  sidebar "Other Tasks For This User", :only => :show do
  table_for current_admin_user.tasks.where(:project_id => task.project) do |t|
    t.column("Status") { |task| status_tag (task.is_done ? "Done" : "Pending"), (task.is_done ? :ok : :error) }
    t.column("Title") { |task| link_to task.title, admin_task_path(task) }
  end
end

  # Filter only by title
  filter :title

end
