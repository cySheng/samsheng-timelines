class Timeline < ApplicationRecord
  validates :event, presence: true
end
