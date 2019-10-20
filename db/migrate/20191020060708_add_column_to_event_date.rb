class AddColumnToEventDate < ActiveRecord::Migration[5.0]
  def change
    add_column :event_dates, :event_name, :string
    add_column :event_dates, :event_date_comment, :string
  end
end
