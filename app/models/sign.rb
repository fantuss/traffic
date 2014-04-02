class Sign < ActiveRecord::Base
    has_one :shape
    has_many :cart_entries
    belongs_to :category
end
