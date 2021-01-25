class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :motto
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
