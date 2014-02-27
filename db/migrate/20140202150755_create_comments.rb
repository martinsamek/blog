class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :comment_body
      t.references :article, index: true

      t.timestamps
    end
  end
end
