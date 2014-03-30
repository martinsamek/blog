class Article < ActiveRecord::Base
  belongs_to :author

  has_many :comments, as: :commentable, :dependent => :destroy


  accepts_nested_attributes_for :author

end
