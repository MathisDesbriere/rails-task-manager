class ChangeCompletedColumnNull < ActiveRecord::Migration[7.0]
  def change
    Task.where(completed: nil).update_all(completed: false)
    change_column_null :tasks, :completed, false
  end
end
