class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.belongs_to :user, foreign_key: true
      t.attachment :image
      t.integer :purpose_type, limit: 1
      t.integer :status, limit: 1

      t.timestamps
    end
  end
end
