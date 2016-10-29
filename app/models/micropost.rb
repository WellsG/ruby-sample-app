# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  content    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Micropost < ApplicationRecord
belongs_to :user
default_scope lambda { order(created_at: :desc)}
validates :content, :length => { :maximum => 140}
end
