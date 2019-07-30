class Comment < ApplicationRecord
	belongs_to :listing
	has_many :likes, dependent: :destroy

end
