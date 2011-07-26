class CreateEncoderSessions < ActiveRecord::Migration
  def self.up
    create_table :encoder_sessions do |t|
      t.belongs_to :encoder
      t.string :ip_address
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :encoder_sessions
  end
end
