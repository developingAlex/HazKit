class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :home_location
      t.text :profile_image_data

      t.timestamps
    end
  end
end
