# code here!
require 'pry'
class School
  
  
  def initialize(school_name)
  @school_name = school_name
  @roster = {}
  
  end 
  
  def add_student(student,grade)
    if !roster.keys.include?(grade)
      roster[grade] = [student]
    else
      roster[grade].push(student)
    end
  end
  
  def grade(num)
    roster[num].map {|grade| grade}
  end
  
  
  def sort
    
    roster.sort.to_h
    
  end
  
  
  attr_reader :roster, :school_name
end