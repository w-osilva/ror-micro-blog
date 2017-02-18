class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :text
      t.integer :visibility, default: 0

      t.timestamps
    end
  end
end
