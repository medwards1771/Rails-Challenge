class Comment < ActiveRecord::Base
  belongs_to :post
  validates :name,    presence: true
  validates :text,     presence: true
  validates :email, presence: true
end