class Testpoint < ActiveRecord::Base
belongs_to :user
default_scope -> { order('created_at DESC') }

validates :user_id,presence:true
validates :step,presence:true
validates :point,presence:true

#  def self.from_users_by(user)
 #   testpoint_user_ids = "SELECT followed_id FROM users
 #                        WHERE id = :user_id"
 #   where("user_id IN (#{testpoint_user_ids}) OR user_id = :user_id",
 #         user_id: user.id)
 # end
end
