class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
end
メッセージ一つに対して