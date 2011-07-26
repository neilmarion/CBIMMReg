class CreateAdminSessions < ActiveRecord::Migration
  def self.up
    create_table :admin_sessions do |t|
      t.belongs_to :admin
      t.string :ip_address
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_sessions
  end
end
