class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true


  def active_first_round?
    self.cohort.setting.active
  end
end
