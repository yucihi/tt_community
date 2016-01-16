class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :body
      t.string :place
      t.date :day
      t.boolean :complete

      t.timestamps
    end
  end
end
