class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :participant
      t.boolean :delete_flg

      t.timestamps
    end
  end
end
