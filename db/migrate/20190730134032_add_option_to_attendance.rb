class AddOptionToAttendance < ActiveRecord::Migration[5.0]
  def change
    change_column :attendances, :event_date_id, :string, null:false, limit:10
    change_column :attendances, :event_date_comment_id, :string, limit:10
    change_column :attendances, :participant_id, :string, null:false, limit:10
    change_column :attendances, :attendance, :integer, null:false, limit:1
    change_column :attendances, :delete_flg, :boolean, limit:1
  end
end
