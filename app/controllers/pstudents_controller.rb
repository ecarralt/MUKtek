class PstudentsController < ApplicationController

  def home
    @pstudent = Pstudent.new
  end

  def create
    @pstudent = Pstudent.new
    @pstudent.first_name = params[:pstudent][:first_name]
    @pstudent.last_name = params[:pstudent][:last_name]
    @pstudent.email = params[:pstudent][:email]
    if @pstudent.save
      redirect_to home_path, notice: "Ya estás inscrito al newsletter!"
    else
      redirect_to home_path, notice: "Algo no funcinó registrando tus datos, por favor trata otra vez llenando todos los campos en la forma!"
    end
  end

  def newhome

  end

## NEW WEBSITE CODE

  def nosotros

  end

  def cursos

  end

  def newsletter_form

  end

  def terms

  end
  def privacy

  end

end
