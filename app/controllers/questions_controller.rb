class QuestionsController < ApplicationController

  def ask
  end


  def answer
    @ask = params[:question]
    @answer = answer_coach(@ask)
  end

  def answer_coach(ask)
    if ask.last == "?"
      @answer = "Great!"
    elsif ask.last ==
      @answer = "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
