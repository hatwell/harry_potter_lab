require_relative('../models/house')
require_relative('../models/student')
require('pry-byebug')

House.delete_all
Student.delete_all

house1 = House.new({
  "house_name" => "Gryffindor",
  "url_address" => "http://img.cadnav.com/allimg/150804/cadnav-150P4103333.jpg",
  "bio" => "Gryffindor values bravery, daring, nerve, and chivalry. Its emblematic animal is the lion and its colours are scarlet and gold. Minerva McGonagall was the most recent Head of Gryffindor. Sir Nicholas de Mimsy-Porpington, also known as Nearly Headless Nick, was the house ghost. The founder of the house was Godric Gryffindor. Gryffindor corresponds to the element of Fire. The common room was located in one of the highest towers at Hogwarts, the entrance was situated on the seventh floor in the east wing of the castle and is guarded by a portrait of The Fat Lady . She permits entrance if given the correct password, which is changed numerous times throughout the school year. Famous Gryffindors include: Albus Dumbledore, Harry Potter, and Celestina Warbeck."
  })

house2 = House.new({
  "house_name" => "Slytherin",
  "url_address" => "http://pix.iemoji.com/images/emoji/apple/ios-9/256/snake.png",
  "bio" => "Slytherin house values ambition, cunning and resourcefulness and was founded by Salazar Slytherin. Its emblematic animal is the serpent, and its colours are emerald green and silver. Professor Horace Slughorn was the Head of Slytherin during the 1997–1998 school year, replacing Severus Snape, who as well, replaced Slughorn as Potions Professor when he retired for the first time several years prior. The Bloody Baron is the house ghost. The founder of the house was Salazar Slytherin. Slytherin corresponds roughly to the element of water. The Slytherin dormitories and common room are reached through a bare stone wall in the Dungeons. The Slytherin common room lies beneath the Black Lake. It is a long, low underground room with rough stone walls and silver lamps hanging from the ceiling. Famous Slytherins include: Merlin, Tom Riddle, and Dolores Umbridge."
  })

house3 = House.new({
  "house_name" => "Hufflepuff",
  "url_address" => "https://pbs.twimg.com/profile_images/588180948887277568/qURfGz0F.jpg",
  "bio" => "Hufflepuff values hard work, dedication, patience, loyalty, and fair play. Its emblematic animal is the badger, and Yellow and Black are its colours. Pomona Sprout was the Head of Hufflepuff during 1991 - 1998, Sprout left the post of Head of Hufflepuff and Herbology Professor sometime before 2017 and her successor for the position of Head of Hufflepuff is currently unknown. The Fat Friar is its ghost. The founder of the house was Helga Hufflepuff. Hufflepuff corresponds to the element of earth. The Hufflepuff dormitories and common room are located somewhere in the basement, near the castles kitchens. It can be accessed by tapping the barrel two from the bottom, middle of the second row in the rhythm of Helga Hufflepuff and is described as being a cosy and welcoming place with yellow hangings, fat armchairs, and underground tunnels that lead to the dormitories, which have perfectly round doors, similar to barrel tops. Famous Hufflepuffs include: Hengist of Woodcroft (founder of Hogsmeade), Newt Scamander, and Artemisia Lufkin (first female minister for magic)."
  })

house4 = House.new({
  "house_name" => "Ravenclaw",
  "url_address" => "http://www.seeingbirds.com/images/webphotos/bigthumbs/HoodedCrow10.jpg",
  "bio" => "Ravenclaw values intelligence, knowledge, and wit. Its emblematic animal is the eagle, and its colours are blue and bronze. The Ravenclaw Head of House in the 1990s was Filius Flitwick. The ghost of Ravenclaw is the Grey Lady, who was the daughter of Rowena Ravenclaw, the houses founder. Ravenclaw corresponds to the element of air. The Ravenclaw common room and dormitories are located in a tower on the west side of the castle. Ravenclaw students must answer a riddle as opposed to giving a password to enter their dormitories. This riddle, however, can be answered by non-Ravenclaws. Famous Ravenclaws include: Gilderoy Lockheart, Ignatia Wildsmith (inventor of floo powder), and Garrick Ollivander."
  })

house1.save
house2.save
house3.save
house4.save


student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 14
  })

student2 = Student.new({
  "first_name" => "Steven",
  "last_name" => "Harold",
  "house_id" => house2.id,
  "age" => 16
  })

student3 = Student.new({
  "first_name" => "Lara",
  "last_name" => "Croft",
  "house_id" => house3.id,
  "age" => 19
  })

student4 = Student.new({
  "first_name" => "Dennis",
  "last_name" => "Dog",
  "house_id" => house4.id,
  "age" => 44
  })

  student1.save
  student2.save
  student3.save
  student4.save

binding.pry
nil
