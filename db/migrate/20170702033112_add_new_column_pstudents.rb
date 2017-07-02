class AddNewColumnPstudents < ActiveRecord::Migration
  def change
    add_column :pstudents, :fullname, :string
    add_column :pstudents, :from_quickbutton, :boolean
  end
end
