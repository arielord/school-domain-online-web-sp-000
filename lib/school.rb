# code here!
class School
  #attr_reader :name
  
  ROSTER = {}
  
  def initialize(name)
    @name = name
  end
  
  def roster
    ROSTER
  end
  
  def add_student(name, grade)
    #ROSTER.key?(grade) ? ROSTER[grade] << name : ROSTER[grade] = [name]
    if ROSTER.key?(grade)
      ROSTER[grade] << name
    else
      ROSTER[grade] = [name]
    end
    ROSTER
  end
  
  def grade(grade_level)
    ROSTER[grade_level]
  end
  
  def sort
    ROSTER.collect {|key, value| value.sort}
    ROSTER
  end
  
end