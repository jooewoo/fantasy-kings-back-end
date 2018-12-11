# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :players
  has_many :teams
  has_many :stats, through: :teams
  # validates :email, :password, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 1, maximum: 256 }
end
