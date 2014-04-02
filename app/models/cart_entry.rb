class CartEntry < ActiveRecord::Base
    belongs_to :cart
    has_one :sign
    has_one :dimension
end
