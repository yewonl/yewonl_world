class Article < ApplicationRecord
    has_many :categories

    validates_presence_of :title
    validates_presence_of :content

    scope :active, 		 -> { where('active = ?', true) }
    scope :alphabetical, -> { order('title') }
end
