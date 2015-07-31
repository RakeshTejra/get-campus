ActiveAdmin.register Detail do
  permit_params :title, :description, :start_date, :end_date
  
  index do
    selectable_column
    column :title
    column "Start Date" do |d|
      d.start_date.strftime('%d/%m/%Y')
    end
    column "End Date" do |d|
      d.end_date.strftime('%d/%m/%Y')
    end
    column :description
    actions
  end
  
  show do
    attributes_table do
      row :title
      row "Staart Date" do |d|
        d.start_date.strftime('%d/%m/%Y')
      end
      row "End Date" do |d|
        d.end_date.strftime('%d/%m/%Y')
      end
      row :description
    end  
  end      
  
  form do |f|
    f.inputs "Detail Update" do
      f.input :title
      f.input :start_date, as: :datepicker, datepicker_options: { dateFormat: "dd/mm/yy" }
      f.input :end_date, as: :datepicker, datepicker_options: { dateFormat: "dd/mm/yy" }
      f.input :description
    end
    f.actions
  end  

end
	
