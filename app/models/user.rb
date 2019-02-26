class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :billboards, dependent: :destroy
  has_many :artists, dependent: :destroy
  has_many :songs, through: :artists
  # accepts_nested_attributes_for :songs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
