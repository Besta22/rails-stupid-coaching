class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    if @question =~ /I am going to train/i
      @answer = "Go go go go !!"
  elsif @question.ends_with?("?") # =~ /.*\?$/
    @answer = "Silly question, go and train!"
  else
    @answer = "I don't care, just train!"
  end
end

  def ask
  end
end













# class CoachingController < ApplicationController
#   def ask
#   end

#   def answer
#     @question = params[:question]
#     if @answer == coach_answer(@question)
#     else @answer == coach_answer_enhanced(@question)
#     end
#   end



# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message.include?("?")
#     return "Silly question, get dressed and go to work!"
#   elsif your_message == "I am going to work right now!"
#     return ""
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   if your_message == "I am going to work right now!".upcase
#     return ""
#   elsif your_message.upcase
#     return "I can feel your motivation! " + coach_answer(your_message)
#   end
# end
