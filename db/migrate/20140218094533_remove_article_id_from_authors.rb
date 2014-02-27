class RemoveArticleIdFromAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :article_id, :integer
  end
end
