class AddOptionToEventDate < ActiveRecord::Migration[5.0]
  def change
    change_column :event_dates, :event_id, :string, null:false, limit:10
    change_column :event_dates, :event_date, :string, null:false, limit:8
    change_column :event_dates, :delete_flg, :boolean, limit:1
  end
end
