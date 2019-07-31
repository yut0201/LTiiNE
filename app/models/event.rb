class Event < ApplicationRecord
  def to_param
  	event_name
  end
end
