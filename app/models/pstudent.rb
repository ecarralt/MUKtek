class Pstudent < ActiveRecord::Base

   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true
   validates :fullname, presence: true
   validates :from_quickbutton, inclusion: { in: [ true, false ] }


   def full_name
     name = [self.first_name," ", self.last_name]
     name.join
   end

end
