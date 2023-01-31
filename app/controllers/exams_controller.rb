class ExamsController < ApplicationController
    def index
    end

    def show
        @exam = Exam.find(params[:id])
        @tag_exams = @exam.tags
    end

    def newest
        @newests = Exam.all.reorder(created_at: :desc).paginate(page: params[:page], per_page: 3)
        user_exam = Exam.joins(:user_exams).where('user_exams.user_id = ?', current_user.id)
        @most_relates = user_exam.joins(:exam_tags).where('exam_tags.tag_id').reorder(created_at: :desc).distinct.paginate(page: params[:page], per_page: 3)
    end

    def completed
        @completes = Exam.all.reorder(finished_at: :desc).paginate(page: params[:page], per_page: 3)
        user_exam = Exam.joins(:user_exams).where('user_exams.user_id = ?', current_user.id)
        @most_relates = user_exam.joins(:exam_tags).where('exam_tags.tag_id').reorder(created_at: :desc).distinct.paginate(page: params[:page], per_page: 3)
    end
end
