class AddUniversityColumntrue < ActiveRecord::Migration
  def change
    add_column :applications, :universidad, :string
  end
end
