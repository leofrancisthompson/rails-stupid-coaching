class QuestionsController < ApplicationController

  def ask
  end

  # created @input instance because we want to display in our answer view (html )

  def answer
    @input =  params[:input]
    @output = "?"

    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    if @input == "I am going to work"
      @output = "Great!"
    elsif @input.end_with?("?")
      @output = "Silly question, get dressed and go to work!"
    else
      @output ="I don't care, get dressed and go to work!"
    end
  end
end
