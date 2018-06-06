require_relative('../db/sql_runner')

class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize(info)
    @id = info['id'].to_i
    @first_name = info['first_name']
    @last_name = info['last_name']
    @house_id = info['house_id'].to_i
    @age = info['age'].to_i
  end

  def pretty_name()
    return "#{@first_name} #{@last_name}"
  end

  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house_id,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @last_name, @house_id, @age]
    student_info = SqlRunner.run(sql, values)
    @id = student_info.first()['id'].to_i
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [@house_id]
    results = SqlRunner.run(sql, values)
    return House.new(results[0])
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run( sql, values )
    result = Student.new( student.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end



end
