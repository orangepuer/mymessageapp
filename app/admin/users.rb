ActiveAdmin.register User do
  permit_params :email, :name, :surname, :patronymic
end
