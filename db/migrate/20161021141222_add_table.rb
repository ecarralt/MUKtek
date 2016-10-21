class AddTable < ActiveRecord::Migration
  def change
    create_table :pstudents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
  end
end
