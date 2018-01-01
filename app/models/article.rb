class Article < ApplicationRecord
  belongs_to :curriculum
  has_many :reads, dependent: :destroy
end
