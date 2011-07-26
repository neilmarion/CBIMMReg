class CreateLocales < ActiveRecord::Migration
  def self.up
    create_table :locales do |t|
      t.string :name
      t.belongs_to :area

      t.timestamps
    end
  end

  def self.down
    drop_table :locales
  end
end
