class Cat < ApplicationRecord
	scope :with_long_name, -> { where("LENGTH(name) > 4") }
end
