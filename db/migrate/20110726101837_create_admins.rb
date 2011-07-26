class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :email
      t.string :salt
      t.string :encrypted_password

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
