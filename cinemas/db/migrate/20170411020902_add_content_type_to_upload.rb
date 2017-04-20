class AddContentTypeToUpload < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :url_content_type, :string
  end
end
