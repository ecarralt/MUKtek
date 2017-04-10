class AddUniversityColumn < ActiveRecord::Migration
  def change
    add_column :applications, :universidad, :string
  end
end
