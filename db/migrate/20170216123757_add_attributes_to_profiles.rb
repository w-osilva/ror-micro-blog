class AddAttributesToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :first_name, :string, after: :id
    add_column :profiles, :last_name, :string, after: :first_name
    add_column :profiles, :birthdate, :date, after: :last_name
  end
end
