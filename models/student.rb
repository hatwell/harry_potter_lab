require_relative('../db/sql_runner')

class Student
  attr_reader :id
  attr_accessor :first_name, :last_name, :age, :house_id

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, age, house_id) VALUES ('#{@first_name}', '#{@last_name}', #{@age}, #{@house_id}) RETURNING *;"
    student_data = SqlRunner.run(sql)
    @id = student_data.first()['id']
  end

  def full_name()
    return "#{@first_name} #{@last_name}"
  end

  def house
    sql = "SELECT * FROM houses WHERE id = #{@house_id}"
    result = SqlRunner.run(sql)
    return result.first['house_name']
  end

  def self.delete_all
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students;"
    result = Student.map_items(sql)
  end

  def self.map_items(sql)
    students = SqlRunner.run(sql)
    result = students.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    result = Student.map_items(sql)
  end

end
