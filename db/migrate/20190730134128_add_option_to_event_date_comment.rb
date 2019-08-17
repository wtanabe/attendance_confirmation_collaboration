class AddOptionToEventDateComment < ActiveRecord::Migration[5.0]
  def change
    change_column :event_date_comments, :event_date_id, :string, null:false, limit:10
    change_column :event_date_comments, :event_date_comment, :string, null:false, limit:20
    change_column :event_date_comments, :delete_flg, :boolean, limit:1
  end
end
