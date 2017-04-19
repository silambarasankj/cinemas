class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.belongs_to :state, foreign_key: true
      t.string :name
      t.integer :status, limit: 1

      t.timestamps
    end
  end
end
