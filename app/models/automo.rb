class Automo < ApplicationRecord
  belongs_to :creator
  has_many :autorecords
end
