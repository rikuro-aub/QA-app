# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  question_id :bigint
#  name        :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ApplicationRecord
  belongs_to :question
  validates :content, presence: true
  validates :name, presence: true
end
