class Area < ActiveRecord::Base
has_many :testpoints
belongs_to :user
default_scope -> { order('name ASC') }
end
