class Author < ActiveRecord::Base
  has_many :articles
  has_many :comments, as: :commentable

  accepts_nested_attributes_for :articles
end
