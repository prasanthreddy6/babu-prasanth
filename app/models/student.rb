class Student < ActiveRecord::Base

  attr_accessor           :checking
  

#validates_presence_of :name

#before_validation :default_to_zero_if_necessary, :on => :create 

serialize :fruit_name

before_validation do |student|
  student.fruit_name.reject!(&:blank?) if student.fruit_name
end
	



private 

def default_to_zero_if_necessary
    self.name = 0 if self.name.blank?
end

end
