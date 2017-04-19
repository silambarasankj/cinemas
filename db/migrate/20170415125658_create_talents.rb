class CreateTalents < ActiveRecord::Migration[5.0]
  def change
    create_table :talents do |t|
      t.belongs_to :profile, foreign_key: true
      t.belongs_to :skill, foreign_key: true

      t.timestamps
    end
  end
end
