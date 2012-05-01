class StageScore < ActiveRecord::Base
  attr_accessible :no_shoots, :points_down, :procedurals, :shooter_id, :shot_time, :stage_id
  belongs_to :shooter
  belongs_to :stage
end
