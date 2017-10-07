require 'date'

class Time
  def self.today
    Date.today.strftime("%Y-%m-%d")
  end
end

