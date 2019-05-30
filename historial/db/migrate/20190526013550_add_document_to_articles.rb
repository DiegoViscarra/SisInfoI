class AddDocumentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_attachment :articles,:document
  end
end
