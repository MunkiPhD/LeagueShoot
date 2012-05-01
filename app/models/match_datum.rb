class MatchDatum < ActiveRecord::Base
  attr_accessible :division_id, :lineup_position, :match_id, :shooter_id, :squad
  belongs_to :match
  belongs_to :shooter
  belongs_to :division
end
