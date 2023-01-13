# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
    Tag.create(name: Faker::ProgrammingLanguage.name)
end

10.times do |i|
    @exam = Exam.create(
        name: Faker::Name.name, 
        short_description: Faker::Markdown.emphasis, 
        detail: Faker::Fantasy::Tolkien.poem, 
        number_of_question: 10,
        time_out: 30,
        image: Faker::LoremFlickr.image,
        mark: 10)
end

4.times do |i|
    @question = Question.create(
        title: Faker::Quotes::Chiquito.sentence,
        exam_id: @exam.id
    )
end

Answer.create(
    title: Faker::Quotes::Chiquito.sentence,
    question_id: @question.id
)
