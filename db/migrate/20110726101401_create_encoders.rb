class CreateEncoders < ActiveRecord::Migration
  def self.up
    create_table :encoders do |t|
      t.string :last_name
      t.string :first_name
      t.string :mname
      t.belongs_to :locale
      t.string :email
      t.string :salt
      t.string :encrypted_password

      t.timestamps
    end
  end

  def self.down
    drop_table :encoders
  end
end
