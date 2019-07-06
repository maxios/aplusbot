class Courses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :uid, unique: true
      t.string :name
      t.string :description
      t.integer :institution_id, foreign_key: true, index: true
    end
  end
end
