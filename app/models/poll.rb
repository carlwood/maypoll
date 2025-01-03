class Poll < ApplicationRecord
    validates_presence_of :question
end
