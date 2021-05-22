class Color < ApplicationRecord
    has_many :users
    has_many :sites
end
