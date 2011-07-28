class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.belongs_to :locale
      t.integer :role

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
