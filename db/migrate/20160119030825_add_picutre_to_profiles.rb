class AddPicutreToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :picture_data, :binary
    add_column :profiles, :content_type, :string
  end
end
