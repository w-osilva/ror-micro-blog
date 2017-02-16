class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.text :about
      t.string :picture

      t.timestamps
    end
  end
end
