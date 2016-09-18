# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  name                  :string
#  email                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  password_digest       :string
#  password              :string
#  password_confirmation :string
#

class User < ApplicationRecord
has_secure_password
validates(:name, presence: true, length: {maximum:50})
validates :email, presence: true
validates :password, presence:true, length: {minimum: 6}
validates :password_confirmation, presence:true
has_many :microposts
end
