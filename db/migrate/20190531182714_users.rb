class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid, unique: true
      t.bigint :fb_id, unique: true
      t.string :student_id, unique: true
      t.string :name
      t.string :type, index: true
    end
    add_index :users, :fb_id, unique: true
  end
end
