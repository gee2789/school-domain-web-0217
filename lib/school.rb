require 'pry'

class School
  attr_accessor :name,:roster, :grade

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student_name, grade)
    if @roster[grade]
       @roster[grade]<<student_name
    else
    @roster[grade]=[]
    @roster[grade]<<student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    hash_sort={}
    @roster.collect{|grade, name_array|
      hash_sort[grade]=name_array.sort}
      hash_sort
  end

end
