class AddProfileReferencesToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :profile, index: true
  end
end
