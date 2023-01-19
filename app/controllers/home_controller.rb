class HomeController < ApplicationController
  def index
    @exams = Exam.all.reorder(created_at: :desc).paginate(page: params[:page], per_page: 3)
    @most_populars = Exam.joins(:user_exams).reorder(user_id: :desc).distinct.paginate(page: params[:page], per_page: 3)
  end
end
