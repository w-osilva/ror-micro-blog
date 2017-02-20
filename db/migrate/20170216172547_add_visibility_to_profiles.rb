class AddVisibilityToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :visibility, :integer, default: 0
  end
end
