class Area < ActiveRecord::Base
has_many :testpoints,dependent: :destroy
belongs_to :user
default_scope -> { order('name ASC') }
end
