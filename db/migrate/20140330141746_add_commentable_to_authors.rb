class AddCommentableToAuthors < ActiveRecord::Migration
  def change
    add_reference :authors, :commentable, polymorphic: true, index: true
  end
end
