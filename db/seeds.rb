# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

tags = Tag.create([
    { name: "develop"}, 
    { name: "Ruby"}, 
    { name: "Rails" }
    ])

# t.string "name"
#     t.string "short_description"
#     t.string "detail"
#     t.string "number_of_question"
#     t.integer "time_out"
#     t.string "image"
#     t.integer "mark"
#     t.datetime "start_at"
#     t.datetime "end_at"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false

Exam.create(
    name: "English",
    short_description: "Short description here!",
    detail: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    number_of_question: 30,
    time_out: 30,
    image: "https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-fun-english-training-class-enrollment-psd-layering-image_187234.jpg",
    mark: 30,
    start_at: Time.now,
    end_at: Time.now
)

Exam.create(
    name: "Spain",
    short_description: "Short description here!",
    detail: "It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    number_of_question: 30,
    time_out: 30,
    image: "https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-fun-english-training-class-enrollment-psd-layering-image_187234.jpg",
    mark: 30,
    start_at: Time.now,
    end_at: Time.now
)

Exam.create(
    name: "VietNam",
    short_description: "Short description here!",
    detail: "It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    number_of_question: 30,
    time_out: 30,
    image: "https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-fun-english-training-class-enrollment-psd-layering-image_187234.jpg",
    mark: 30,
    start_at: Time.now,
    end_at: Time.now
)
