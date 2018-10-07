# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.create([
  {
    question: 'Кто такой Робер Дуано?',
    answer: 'Французский фотограф, мастер гуманистической французской фотографии'
  }, {
    question: 'Bonjour',
    answer: 'Здравствуйте, добрый день'
  }, {
    question: 'Как называлось творческое объединение, основанное в Мюнхене в начале ХХ века?',
    answer: 'Синий всадник'
  }, {
    question: 'Кто основал творческое объединение "Синий всадник?"',
    answer: 'Василий Кандинский и Франц Марк'
  }, {
    question: 'Skill',
    answer: 'Навык, умение, мастерство'
  }, {
    question: 'Evening',
    answer: 'Вечер'
  }
  ])

  Topic.create([
    {
      title: 'Французский язык'
    }, {
      title: 'Английский язык'
    }, {
      title: 'Искусство ХХ века'
    }
    ])
