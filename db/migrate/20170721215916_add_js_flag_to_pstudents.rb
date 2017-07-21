class AddJsFlagToPstudents < ActiveRecord::Migration
  def change
    add_column :pstudents, :from_js_landing, :boolean
  end
end
