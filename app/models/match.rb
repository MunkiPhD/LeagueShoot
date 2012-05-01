class Match < ActiveRecord::Base
  attr_accessible :match_date, :title
  has_many :shooters, :through => :match_datum
end
