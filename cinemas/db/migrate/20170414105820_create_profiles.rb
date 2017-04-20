class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :gender
      t.string :marital_status
      t.string :mobile_no
      t.belongs_to :state, foreign_key: true
      t.belongs_to :district, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
