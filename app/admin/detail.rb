ActiveAdmin.register Detail do
  permit_params :title, :description, :start_date, :end_date, :photo
  
  index do
    selectable_column
    column :title
    column "Start Date" do |d|
      d.start_date.strftime('%d/%m/%Y')
    end
    column "End Date" do |d|
      d.end_date.strftime('%d/%m/%Y')
    end
    column :photo do |detail|
      image_tag detail.photo.url(:thumb)
    end
    column :description do |detail|
      detail.description.html_safe
    end  
    actions
  end
  
  show do |detail|
    attributes_table do
      row :title
      row "Start Date" do |d|
        d.start_date.strftime('%d/%m/%Y')
      end
      row "End Date" do |d|
        d.end_date.strftime('%d/%m/%Y')
      end
      row :photo do
        image_tag(detail.photo.url)
      end
      row :description do |detail|
        detail.description.html_safe
      end
    end  
  end      
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Detail Update" do
      f.input :title
      f.input :start_date, as: :datepicker, datepicker_options: { dateFormat: "dd/mm/yy" }
      f.input :end_date, as: :datepicker, datepicker_options: { dateFormat: "dd/mm/yy" }
      f.input :photo
      f.input :description, :input_html => { class: "tinymce", :rows => 15, :cols => 10 }
    end
    f.actions
  end  

end
	
