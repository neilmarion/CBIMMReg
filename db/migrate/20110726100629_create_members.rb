class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.integer :year_level
      t.string :course_section
      t.string :zone_group
      t.string :contact_number
      t.integer :hs_col
      t.belongs_to :school
      t.belongs_to :locale
      t.belongs_to :circle
      t.belongs_to :encoder
      t.belongs_to :area

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end

