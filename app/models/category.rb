class Category < ActiveRecord::Base
	has_many :letters
    validates :title, presence: true

end
