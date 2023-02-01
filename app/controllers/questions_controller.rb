class QuestionsController < ApplicationController
    def index
        @exam = Exam.find(params[:exam_id])
        @questions = @exam.questions
    end
end
