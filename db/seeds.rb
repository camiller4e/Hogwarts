require_relative('../models/student')
require_relative('../models/house')
require( 'pry-byebug' )

house1 = House.new({
  "name" => "Gryffindor"
  })
  house1.save()

  house2 = House.new({
    "name" => "Slytherin"
    })
    house2.save()

    house3 = House.new({
      "name" => "Hufflepuff"
      })
      house3.save()

      house4 = House.new({
        "name" => "Ravenclaw"
        })
        house4.save()






student1 = Student.new({
  "first_name" => "Richard",
  "last_name" => "PK",
  "house_id" => house2.id,
  "age" => "14"
  })
  student1.save()

  student2 = Student.new({
    "first_name" => "Tara",
    "last_name" => "McKeaney",
    "house_id" => house1.id,
    "age" => "25"
    })
    student2.save()

    student3 = Student.new({
      "first_name" => "Campbell",
      "last_name" => "Miller",
      "house_id" => house3.id,
      "age" => "31"
      })
      student3.save()

      student4 = Student.new({
        "first_name" => "Kate",
        "last_name" => "Smith",
        "house_id" => house1.id,
        "age" => "29"
        })
        student4.save()

        student5 = Student.new({
          "first_name" => "Curly",
          "last_name" => "Boy",
          "house_id" => house4.id,
          "age" => "18"
          })
          student5.save()

          student6 = Student.new({
            "first_name" => "Wretched",
            "last_name" => "Harmony",
            "house_id" => house1.id,
            "age" => "16"
            })
            student6.save()




                    binding.pry
                    nil
