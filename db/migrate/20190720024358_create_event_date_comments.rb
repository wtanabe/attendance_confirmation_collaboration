class CreateEventDateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :event_date_comments do |t|
      t.string :event_date_id
      t.string :event_date_comment
      t.boolean :delete_flg

      t.timestamps
    end
  end
end
