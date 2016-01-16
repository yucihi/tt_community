class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :sex
      t.date :birthday
      t.string :team
      t.string :place

      t.timestamps
    end
  end
end
