require 'pry'
require 'minitest/autorun'

class GradeSchool
  $arr = []

  def add_student(stu)
    $arr.push(stu)
  end

  def get_grade_students(level ,arr=$arr)
    if(arr.empty?)
      nil
    else
      if(arr.first.grade.eql?(2))
        cons(arr.first, get_grade_students(level, arr[1..-1]))
      else
        get_grade_students(level, arr[1..-1])
      end
    end
  end

  def cons(foo, bar)
    Array.new().push(foo, bar)
  end

  def get_students
    $arr
  end
end

class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name, @grade = name, grade
  end
end

class Test < Minitest::Test
  def setup
    @school = GradeSchool.new
  end

  def test_get_all_students_count
    d = Student.new('D', 2)
    c = Student.new('C', 2)
    b = Student.new('B', 2)
    a = Student.new('A', 2)
    zhangf = Student.new('张飞', 1)
    diaoc = Student.new('貂蝉(貂妹子)', 3)
    @school.add_student(d)
    @school.add_student(c)
    @school.add_student(b)
    @school.add_student(a)
    @school.add_student(zhangf)
    @school.add_student(diaoc)
    assert_equal(6, @school.get_students.count)
  end

  def test_get_grade_students
    foo =  @school.get_grade_students(2)
    assert_equal(4, foo.flatten.compact.count)
  end

end
