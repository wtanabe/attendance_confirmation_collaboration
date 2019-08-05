class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_content
      t.boolean :delete_flg

      t.timestamps
    end
  end
end
