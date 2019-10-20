class RemoveColumnToAttendance < ActiveRecord::Migration[5.0]
  def change
    remove_column :attendances, :event_date_comment_id, :string
  end
end
