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
    answer: 'Французский фотограф, мастер гуманистической французской фотографии',
    image: upload_fake_image
  }, {
    question: 'Bonjour',
    answer: 'Здравствуйте, добрый день'
  }, {
    question: 'Как называлось творческое объединение, основанное в Мюнхене в начале ХХ века?',
    answer: 'Синий всадник'
  }, {
    question: 'Кто основал творческое объединение "Синий всадник?"',
    answer: 'Василий Кандинский и Франц Марк',
    image: upload_fake_image
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


    def upload_fake_image
      uploader = ImageUploader.new(Card.new, :image)
      uploader.cache!(User.all.each { |user| user.avatar = File.open(Dir.glob(File.join(Rails.root, 'lib/tasks/cards', '*')).sample); user.save! })
      uploader
    end
