class Post < ApplicationRecord
    validates_presence_of :title, :content

    scope :free, ->{ where( premium: false )}
end
