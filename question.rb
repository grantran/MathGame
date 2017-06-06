class Question < Game


def make_question 
  @a = rand(1..20)
  @b = rand(1..20)
  "What is #{@a} + #{@b} equal to?"
end

def check_question_answer
  @a + @b 
end

end