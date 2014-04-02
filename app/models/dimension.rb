class Dimension < ActiveRecord::Base
    has_and_belongs_to_many :shapes
    has_many :cart_entries
end
