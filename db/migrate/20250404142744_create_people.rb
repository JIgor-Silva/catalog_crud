class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
