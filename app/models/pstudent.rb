class Pstudent < ActiveRecord::Base

   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true

   def full_name
     name = [self.first_name," ", self.last_name]
     name.join
   end

end
