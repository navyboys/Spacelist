class RemoveUserFromSuites < ActiveRecord::Migration
  def change
    remove_column :suites, :user_id
  end
end
