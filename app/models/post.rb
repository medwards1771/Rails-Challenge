class Post < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :tags

  validates :header,  presence: true,
                      length: { in: 5..50 }
  validates :body,    presence: true,
                      length: { in: 50..2500 }
  validates :author,  presence: true

  def created_at_prettier
    "#{created_at.strftime("%B %d, %G at %l:%M %p")}"
  end

  def description
    body.lines[0..1].join('').rstrip
  end

  def keywords
    tags.collect { |tag| tag.name }.join(', ')
  end
end
