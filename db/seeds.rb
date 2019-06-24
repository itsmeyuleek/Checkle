# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

start = Time.now

# Reset Database
Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

@users = [
  {
    email: 'email@email.com'
  },
  {
    email: 'email1@email1.com'
  },
  {
    email: 'email2@email2.com'
  },
  {
    email: 'email3@email3.com'
  },
  {
    email: 'email4@email4.com'
  }
]

@card_questions = [
  'Кто такой Робер Дуано?',
  'Bonjour',
  'Кто основал творческое объединение "Синий всадник?"',
  'Skill',
  'Evening',
  'Когда отменили крепостное право?',
  'Год крещения Руси',
  'Учение К. Маркса и Ф. Энгельса'
]

@card_answers = [
  'Французский фотограф, мастер гуманистической фотографии',
  'Здравствуйте, добрый день',
  'Василий Кандинский и Франц Марк',
  'Навык, умение, мастерство',
  'Вечер',
  '3 марта 1861 года',
  '988 год',
  'Марксизм'
]

# @cards = [
#   {
#     question: 'Кто такой Робер Дуано?',
#     answer: 'Французский фотограф, мастер гуманистической французской фотографии',
#     image: upload_fake_image
#   }, {
#     question: 'Bonjour',
#     answer: 'Здравствуйте, добрый день'
#   }, {
#     question: 'Кто основал творческое объединение "Синий всадник?"',
#     answer: 'Василий Кандинский и Франц Марк',
#     image: upload_fake_image
#   }, {
#     question: 'Skill',
#     answer: 'Навык, умение, мастерство'
#   }, {
#     question: 'Evening',
#     answer: 'Вечер'
#   }, {
#     question: 'Когда отменили крепостное право?',
#     answer: '3 марта 1861 года'
#   }, {
#     question: 'Год крещения Руси',
#     answer: '988 год'
#   }, {
#     question: 'Учение К. Маркса и Ф. Энгельса',
#     answer: 'Марксизм'
#   }
# ]

@topics = [
  {
    title: 'Французский язык'
  }, {
    title: 'Английский язык'
  }, {
    title: 'Искусство ХХ века'
  }, {
    title: 'Философия'
  }
]


# Fake Data Methods

def random_topic_id
  Topic.offset(rand(Topic.count)).first.id
end

# def upload_fake_image
#   uploader = ImageUploader.new(Card.new, :image)
#   uploader.cache!(User.all.each { |user| user.avatar = File.open(Dir.glob(File.join(Rails.root, 'lib/tasks/cards', '*')).sample); user.save! })
#   uploader
# end
#
def upload_fake_image
  if Random.new_seed.even?
    uploader = ImageUploader.new(Card.new, :image)
    uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/tasks/cards', '*')).sample))
    uploader
  else
    nil
  end
end

# Create Methods
def create_user(user)
  password = 'testtest'
  # banned = user[:banned] ? user[:banned] : false

  User.create!(
    email:    user[:email],
    # role:     user[:role],
    # banned:   banned,
    password: password,
    password_confirmation: password
  )
end

def create_topic(topic)
  Topic.create!(
    title:   topic[:title],
    user_id: User.all.sample.id
  )
end

def create_card
  user = Topic.find(random_topic_id).user

  Card.create!(
    topic_id:  random_topic_id,
    question:  @card_questions.sample,
    answer:    @card_answers.sample,
    image:     upload_fake_image,
    user_id:   user.id
  )
end


# Seed Database With Fake Data
@users.each do |user|
  u = create_user(user)
  puts "User with email #{u.email} created"
end

10.times do
  @topics.each do |topic|
    t = create_topic(topic)
    puts "Topic #{t.id} created"
  end
end

100.times do
  card = create_card
  puts "Card #{card.id} created"
end

@cards = Card.all

finish = Time.now
duration = finish - start
puts "Task completed in #{duration}"
