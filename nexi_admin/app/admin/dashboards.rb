ActiveAdmin::Dashboards.build do
  section "Your tasks for this week" do
    table_for current_admin_user.tasks.where('due_date > ? and due_date < ?', Time.now, 1.week.from_now) do |t|
      t.column("Status") { |task| status_tag (task.is_done ? "Done" : "Pending"), (task.is_done ? :ok : :error) }
      t.column("Title") { |task| link_to task.title, admin_task_path(task) }
      t.column("Assigned To") { |task| task.admin_user.email }
      t.column("Due Date") { |task| task.due_date? ? l(task.due_date, :format => :long) : '-' }
    end
  end

  section "Tasks that are late" do
    table_for current_admin_user.tasks.where('due_date < ?', Time.now) do |t|
      t.column("Status") { |task| status_tag (task.is_done ? "Done" : "Pending"), (task.is_done ? :ok : :error) }
      t.column("Title") { |task| link_to task.title, admin_task_path(task) }
      t.column("Assigned To") { |task| task.admin_user.email }
      t.column("Due Date") { |task| task.due_date? ? l(task.due_date, :format => :long) : '-' }
    end
  end
  
  section "The World is flat" do
    
  end
end