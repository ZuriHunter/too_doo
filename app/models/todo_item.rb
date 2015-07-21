class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  
  def completed?
    !completed_at.blank?
    #if completed then the completed field not be blank
  end
  
end
