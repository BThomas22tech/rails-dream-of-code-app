class Topic < ApplicationRecord
    belongs_to :lesson
    belongs_to :course
end