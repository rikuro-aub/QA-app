# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  name       :string
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
    has_many :answers, dependent: :destroy
    validates :name, presence: true
    validates :title, presence: true
    validates :content, presence: true
end
