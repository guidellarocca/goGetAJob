class AddAvatarToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :avatar, :string
  end
end
