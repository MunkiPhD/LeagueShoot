class Stage < ActiveRecord::Base
  attr_accessible :match_id, :number_of_targets, :name
  belongs_to :match
end
