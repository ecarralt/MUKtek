class Application < ActiveRecord::Base

   validates :first_name, presence: true
   validates :last_name_materno, presence: true
   validates :last_name_paterno, presence: true
   validates :email, presence: true
   validates :phone, presence: true
   validates :DOB_day, presence: true
   validates :DOB_month, presence: true
   validates :DOB_year, presence: true
   validates :a1_como_te_enteraste, presence: true
   validates :a2_poque_HTMLyCSS, presence: true
   validates :a3_logictest1_Laura, presence: true
   validates :a4_logictest2_arboles, presence: true
   validates :requisitos, presence: true
   validates :universidad, presence: true
   validates :course, presence: true


end
