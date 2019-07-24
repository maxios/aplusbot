class Attendable < ActiveRecord::Migration[5.2]
  def change
    create_table :attendables do |t|
      t.string :uid, unique: true
      t.integer :resource_id, null: false
      t.string :resource_type, null: false
      t.integer :user_id, foreign_key: true
    end
  end
end
