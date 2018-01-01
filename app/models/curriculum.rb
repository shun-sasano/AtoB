class Curriculum < ApplicationRecord
  has_many :articles
  include CurriculumImageUploader[:image]
end
