class RemoveAppIdToApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :app_id, :integer
  end
end
