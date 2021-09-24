class User < ApplicationRecord
  attr_accessor :remember_token

  has_many :posts, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :status, presence: true, numericality: { only_integer: true }
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

  enum status: { activating: 0, active: 1, deleted: 2 }

  before_save :downcase_email

  private

  def downcase_email
    email.downcase!
  end
end
