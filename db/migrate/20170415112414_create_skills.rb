class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.integer :status, limit: 1

      t.timestamps
    end
  end
end
