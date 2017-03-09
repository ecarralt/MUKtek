class AddApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name_materno
      t.string :last_name_paterno
      t.string :email
      t.string :phone
      t.integer :DOB_day
      t.string :DOB_month
      t.integer :DOB_year
      t.text :a1_como_te_enteraste
      t.text :a2_poque_HTMLyCSS
      t.text :a3_logictest1_Laura
      t.text :a4_logictest2_arboles
      t.timestamps
    end
  end
end
