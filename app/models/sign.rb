class Sign < ActiveRecord::Base
    has_one :shape
    has_many :cart_entries
    has_and_belongs_to_many :substrates
    belongs_to :category
end
