class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid, unique: true
      t.string :student_id, unique: true
      t.string :name
      t.string :type, index: true
    end
  end
end
