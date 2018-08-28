class Student <ApplicationRecord
  validates_presence_of :name
  has_many :addresses, dependent: :destroy
end
