class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :kanji_first_name, presence: true,  format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
         validates :kanji_last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
         validates :katakana_first_name, presence: true,  format: { with: /\A[ァ-ヶー－]+\z/}
         validates :katakana_last_name, presence: true, format: { with: /\A[ァ-ヶー－]+\z/}
         validates :password, format:  { with: /\A(?=.*[a-zA-Z])(?=.*\d).+\z/ }
         validates :age, presence: true, numericality: { only_integer: true }
end
