class Page < ApplicationRecord
 has_many :users


 validates :title, presence: true
 validates :body, presence: true, length: {minimum:10}
end
