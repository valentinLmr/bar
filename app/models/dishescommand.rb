class Dishescommand < ApplicationRecord
  belongs_to :command
  belongs_to :drink
end
