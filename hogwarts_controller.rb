require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/house')
require_relative('./models/student')



get '/' do
  @students = Student.all()
  erb(:index)
end


get '/students' do
  @students = Student.all()
  erb(:students)
end


get '/students/new' do
  @houses = House.all()
  erb(:new_student)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/houses' do
  @houses = House.all
  erb(:houses)
end

get  '/houses/new' do
  erb(:new_house)
end

post '/houses' do
  @house = House.new(params)
  @house.save()
  erb(:create_house)
end
