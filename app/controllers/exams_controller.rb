class ExamsController < ApplicationController
    def index
    end

    def newest
        @newests = Exam.all.reorder(created_at: :desc).paginate(page: params[:page], per_page: 3)
        @most_relates = Exam.joins(:exam_tags).where('exam_tags.user_id = ? ' , current_user.id).distinct.paginate(page: params[:page], per_page: 3)
    end

    def completed
        @completes = Exam.all.reorder(finished_at: :desc).paginate(page: params[:page], per_page: 3)
        @most_relates = Exam.joins(:exam_tags).where('exam_tags.user_id = ? ' , current_user.id).distinct.paginate(page: params[:page], per_page: 3)
    end
end
