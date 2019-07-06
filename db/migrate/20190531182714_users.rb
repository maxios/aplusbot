class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :student_id
      t.string :name
    end
  end
end
