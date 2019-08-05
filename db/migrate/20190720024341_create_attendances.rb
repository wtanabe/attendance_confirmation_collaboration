class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.string :event_date_id
      t.string :event_date_comment_id
      t.string :participant_id
      t.integer :attendance
      t.boolean :delete_flg

      t.timestamps
    end
  end
end
