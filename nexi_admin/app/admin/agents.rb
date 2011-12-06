ActiveAdmin.register Agent do
  
    index do
    column :name
    column :url
    column :search_query
  
    default_actions
  end

  
  
  form do |f|
    f.inputs "Agents" do
      f.input :name
      f.input :url
      f.input :search_query                                                   
    end
    f.buttons
  end

  # Filter only by title
  filter :name
  filter :search_query

end
