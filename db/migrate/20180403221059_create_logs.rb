class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
