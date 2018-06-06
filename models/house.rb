require_relative('../db/sql_runner')

class House

  attr_reader :name, :id

  def initialize(info)
    @id = info['id'.to_i]
    @name= info['name']
  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) returning *"
    values = [@name]
    house_info = SqlRunner.run(sql, values)
    @id = house_info.first['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run( sql, values )
    result = House.new( house.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run( sql )
    result = houses.map { |house| House.new( house ) }
    return result
  end

end
