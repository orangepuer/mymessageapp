ActiveAdmin.register Message do
  permit_params :body, :user_id
end
