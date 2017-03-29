require_relative('../db/sql_runner')

class House
  attr_reader :id
  attr_accessor :house_name, :url_address, :bio

  def initialize(options)
    @house_name = options['house_name']
    @url_address = options['url_address']
    @bio = options['bio']
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO houses (house_name, url_address, bio) VALUES ('#{@house_name}', '#{@url_address}', '#{@bio}') RETURNING *;"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id']
  end

  def self.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    result = House.map_items(sql)
  end

  def self.map_items(sql)
    houses = SqlRunner.run(sql)
    result = houses.map {|house| House.new(house)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    result = House.map_items(sql)
  end
end
