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

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
