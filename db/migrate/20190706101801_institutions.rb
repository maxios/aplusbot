class Institutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :uid, unique: true
      t.string :name
      t.string :description
      t.boolean :published, default: false
    end
  end
end
