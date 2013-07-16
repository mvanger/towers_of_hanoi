class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :bookstores
  attr_accessible :title
end