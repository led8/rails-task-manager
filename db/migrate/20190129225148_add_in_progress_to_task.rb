class AddInProgressToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :progress, :boolean, default: false
  end
end
