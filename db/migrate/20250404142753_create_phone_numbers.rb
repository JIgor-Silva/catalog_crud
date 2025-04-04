class CreatePhoneNumbers < ActiveRecord::Migration[8.0]
  def change
    create_table :phone_numbers do |t|
      t.string :number
      t.string :operation_type
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
