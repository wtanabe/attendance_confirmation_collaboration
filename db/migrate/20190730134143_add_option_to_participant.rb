class AddOptionToParticipant < ActiveRecord::Migration[5.0]
  def change
    change_column :participants, :participant, :string, null:false, limit:10
    change_column :participants, :delete_flg, :boolean, limit:1
  end
end
