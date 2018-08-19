class User < ApplicationRecord
  validates :email, presence: true
  has_secure_password

  def appear(on: nil)
    update(appeared: true, appeared_on: on)
    ActionCable.server.broadcast "AppearanceChannel", { event: 'appear', user_id: self.id, room: appeared_on }
  end

  def disappear
    update(appeared: false)
  end

end
