class User < ActiveRecord::Base
  has_secure_password

  has_many :ideas

  has_many :likes, dependent: :destroy
  has_many :ideas_liked, through: :likes, source: :idea

  validates :name, :alias, presence: true
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, length: { maximum: 25 },
                    format: { with: EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8}
end
