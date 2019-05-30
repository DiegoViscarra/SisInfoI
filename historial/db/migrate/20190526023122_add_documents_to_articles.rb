class AddDocumentsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_attachment :articles,:documents
  end
end
