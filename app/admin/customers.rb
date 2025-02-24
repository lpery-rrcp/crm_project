ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, image

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do |customer|
    attributes_table do
      row :full_name
      row :phone_number
      row :email
      row :notes
      row :image do |cust|
        image_tag cust.image if cust.image.attached?
      end
    end
  end
end
