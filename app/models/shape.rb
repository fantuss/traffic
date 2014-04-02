class Shape < ActiveRecord::Base
    has_and_belongs_to_many :dimensions
    has_many :signs
end
