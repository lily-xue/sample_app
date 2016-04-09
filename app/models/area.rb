class Area < ActiveRecord::Base
has_many :testpoints
#default_scope -> { order('area ASC') }
end
