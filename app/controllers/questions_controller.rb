class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :update, :destroy, :show]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def edit
    # @question = Question.find(params[:id])
  end

  def update
    # @qusetion = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alart] = 'Save error!'
      render :edit
    end
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alart] = 'Save error!'
      render :new
    end
  end

  def destroy
    # @qusetion = Question.find(params[:id])
    @question.destroy
    redirect_to root_path, notice: 'Success!'
  end

  def show
    # @question = Question.find(params[:id])
    @answer = Answer.new
  end

  private

    def question_params
      params.require(:question).permit(:name, :title, :content)
    end

    def set_question
      @question = Question.find(params[:id])
    end
end
