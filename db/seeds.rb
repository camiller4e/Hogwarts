require_relative('../models/student')

student1 = Student.new({
  "first_name" => "Richard",
  "last_name" => "PK",
  "house" => "Slytherin",
  "age" => "14"
  })
  student1.save()

  student2 = Student.new({
    "first_name" => "Tara",
    "last_name" => "McKeaney",
    "house" => "Hufflepuff",
    "age" => "25"
    })
    student2.save()

    student3 = Student.new({
      "first_name" => "Campbell",
      "last_name" => "Miller",
      "house" => "Hufflepuff",
      "age" => "31"
      })
      student3.save()

      student4 = Student.new({
        "first_name" => "Kate",
        "last_name" => "Smith",
        "house" => "Gryffindor",
        "age" => "29"
        })
        student4.save()

        student5 = Student.new({
          "first_name" => "Curly",
          "last_name" => "Boy",
          "house" => "Ravenclaw",
          "age" => "18"
          })
          student5.save()

          student6 = Student.new({
            "first_name" => "Wretched",
            "last_name" => "Harmony",
            "house" => "Gryffindor",
            "age" => "16"
            })
            student6.save()
