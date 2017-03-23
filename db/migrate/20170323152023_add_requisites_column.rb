class AddRequisitesColumn < ActiveRecord::Migration
  def change
    add_column :applications, :requisitos, :string
  end
end
