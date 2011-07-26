class AddIsDeletedToMobileWallpapers < ActiveRecord::Migration
  def self.up
    add_column :mobile_wallpapers, :is_deleted, :boolean
  end

  def self.down
    remove_column :mobile_wallpapers, :is_deleted
  end
end
