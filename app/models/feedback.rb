class Feedback < ApplicationRecord
    validates :author, presence: true
    validates :message, presence: true
end
