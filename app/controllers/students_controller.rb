class StudentsController < ApplicationController

  before_action :authenticate_user!, :only => [ :new, :create, :update, :destroy, :edit ]
  before_action :authorize_admin, :only => [ :new, :create, :update, :destroy, :edit ]

  def index
    @students = Student.all.order('graduated_num DESC, created_at')
      respond_to do |format|
      format.html
      format.json { render :json => @students }
    end
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(user_params)
    # @student.status = @student.status.to_i
    # @student.s_type = @student.s_type.to_i
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(user_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to students_path
  end



  protected
  def user_params
    params[:student].permit(:name, :degree, :research_topic, :email, :status, :s_type, :graduated_num)
  end
end
