class AddOptionToEvent < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :event_name, :string, null:false, limit:30
    change_column :events, :event_content, :string, limit:200
    change_column :events, :delete_flg, :boolean, limit:1
  end
end
