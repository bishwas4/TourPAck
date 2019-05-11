class AddColumnsToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :inclusion, :string
    add_column :packages, :exclusion, :string
    add_column :packages, :pickup, :string
  end
end
