class CreateArtigos < ActiveRecord::Migration[5.0]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :corpo

      t.timestamps
    end
  end
end
