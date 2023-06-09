class User < ApplicationRecord
  has_many :authentications

  enum role: [:member, :moderator, :admin]

  def admin?
    role == "admin"
  end

  def promote_to_admin!
    self.role = "admin"
    save!
  end
end
