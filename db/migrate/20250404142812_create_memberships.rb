class CreateMemberships < ActiveRecord::Migration[8.0]
  def change
    create_table :memberships do |t|
      t.references :person, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.datetime :joined_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :memberships, [ :person_id, :group_id ], unique: true
  end
end
