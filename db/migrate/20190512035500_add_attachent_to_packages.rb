class AddAttachentToPackages < ActiveRecord::Migration[5.2]
  def change
    add_attachment :packages, :avatar
  end
end
