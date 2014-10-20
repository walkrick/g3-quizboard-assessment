class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])

    @question = Question.where(id: params[:id])

    @pa = PossibleAnswer.where(question_id: params[:id])

  end


end
