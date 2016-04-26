class Testpoint < ActiveRecord::Base
belongs_to :user
belongs_to :area
default_scope -> { order('created_at DESC') }

LEVELS = ["1级（重要案例）","2级（普通案例）","3级（次要案例）","4级（体验案例）"]
validates :level,presence:true,:inclusion => LEVELS
#validates :user_id,presence:true
validates :step,presence:true
validates :point,presence:true
validates :area,presence:true
end
