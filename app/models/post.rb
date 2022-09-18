class Post < ApplicationRecord
    validate_presence_of :title, :content

    scope :free, ->{ where( premium: false )}
end
