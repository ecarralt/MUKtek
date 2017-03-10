class AddAppIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :app_id, :integer
  end
end
