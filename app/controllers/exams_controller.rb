class ExamsController < ApplicationController
    def index
    end

    def inprogress
        @inprogress = Exam.joins(:user_exams).all.paginate(page: params[:page], per_page: 3)
        @most_relates = Exam.joins(:user_exams).all.paginate(page: params[:page], per_page: 3)
    end

    def completed
        @completes = Exam.joins(:user_exams).all.paginate(page: params[:page], per_page: 3)
        @most_relates = Exam.joins(:user_exams).all.paginate(page: params[:page], per_page: 3)
    end
end
