class User < ApplicationRecord

validates :password, presence: true, length: { minimum: 8, wrong_length: "%{count}"}
end
