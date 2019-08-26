class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :billboard
      t.string :song

      t.timestamps
    end
  end
end
