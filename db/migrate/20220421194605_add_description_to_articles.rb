class AddDescriptionToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :article, :decription, :text
  end
end
