class Student < ActiveRecord::Base

  def initialize
    @active = false
  end
  def to_s
    self.first_name + " " + self.last_name
  end

  def active(status=false)
    status
  end
end
