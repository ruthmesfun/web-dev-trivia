class Trivia < ActiveRecord::Base
  belongs_to :users

  def slug 
    self.question.split(" ").join("-").downcase
  end 

  def self.find_by_slug(slug)
    all_questions = Trivia.all
    question = all_questions.find do |q|
                  q.slug == slug
               end
    return question
  end

end
