class ExamsController < ApplicationController
    def index
    end

    def newest
        @newests = Exam.all.reorder(created_at: :desc).paginate(page: params[:page], per_page: 3)
        user_exam = Exam.joins(:user_exams).all.reorder(created_at: :desc)
        @most_relates = user_exam.joins(:exam_tags).distinct.paginate(page: params[:page], per_page: 3)
    end

    def completed
        @completes = Exam.all.reorder(finished_at: :desc).paginate(page: params[:page], per_page: 3)
        user_exam = Exam.joins(:user_exams).all.reorder(created_at: :desc)
        @most_relates = user_exam.joins(:exam_tags).distinct.paginate(page: params[:page], per_page: 3)
    end
end
