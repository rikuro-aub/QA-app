class AnswersController < ApplicationController
  before_action :set_question, only: [:edit, :create, :update, :destroy]
  before_action :set_answer, only: [:edit, :update, :destroy]

  def edit
    # @question = Question.find(params[:question_id])
    # @answer = @question.answers.find(params[:id])
  end

  def create
    # @question = Question.find(params[:question_id])
    @answer = Answer.new
    if @answer.update(answers_params)
      redirect_to question_path(@question), notice: 'Success!'
    else
      flash[:alart] = 'Invalid!'
      render 'questions/show'
    end
  end

  def update
    # @question = Question.find(params[:question_id])
    # @answer = @question.answers.find(params[:id])
    if @answer.update(answers_params)
      redirect_to question_path(@question), notice: 'Success!'
    else
      flash[:alart] = 'Invalid!'
      render :edit
    end
  end

  def destroy
    # @question = Question.find(params[:question_id])
    # @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question), notice: 'Deleted!'
  end

  private
    def answers_params
      params.require(:answer).permit(:content, :name, :question_id)
    end

    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_answer
      @answer = @question.answers.find(params[:id])
    end
end
