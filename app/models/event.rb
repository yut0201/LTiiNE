class Event < ApplicationRecord
  has_many :presentations
  def to_param
  	event_name
  end
end
