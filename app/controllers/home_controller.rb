class HomeController < ApplicationController
  def index
    @exams = Exam.all.reorder(created_at: :desc).paginate(page: params[:page], per_page: 3)
    most_user = Exam.joins(:user_exams).order('user_exams.user_id')
    @most_populars = most_user.all.reorder(created_at: :desc).distinct.paginate(page: params[:page], per_page: 3)    
  end
end
