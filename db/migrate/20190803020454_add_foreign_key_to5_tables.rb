class AddForeignKeyTo5Tables < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :attendances, :event_date, column: :event_date_id
    add_foreign_key :attendances, :event_date_comment, column: :event_date_comment_id
    add_foreign_key :attendances, :participant, column: :participant_id
    add_foreign_key :event_dates, :event, column: :event_id
    add_foreign_key :event_date_comments, :event_date, column: :event_date_id
  end
end
