class AddCommentableToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :commentable, polymorphic: true, index: true
  end
end
