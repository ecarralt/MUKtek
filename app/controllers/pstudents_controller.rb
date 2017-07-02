class PstudentsController < ApplicationController

  def home
    @pstudent = Pstudent.new
  end

  def newsletter_form
    @pstudent = Pstudent.new
  end

  def create
    @pstudent = Pstudent.new
    @pstudent.first_name = params[:pstudent][:first_name]
    @pstudent.last_name = params[:pstudent][:last_name]
    @pstudent.email = params[:pstudent][:email]
    @pstudent.fullname = "n/a"
    @pstudent.from_quickbutton = false

    if @pstudent.save
      redirect_to home_path,
      notice: "Ya estás inscrito(a) al newsletter. Pronto recibirás las últimas noticias
      de MUKTEK, además de descuentos para nuestra comunidad."
    else
      flash[:notice]= "Algo no funcinó registrando tus datos,
      por favor trata otra vez llenando todos los campos en la forma!"
      render :newsletter_form
    end
  end

  def newhome

  end

  def create_qf
    @pstudent = Pstudent.new

  end

## NEW WEBSITE CODE

  def nosotros
    @pstudent = Pstudent.new


  end

  def cursos
    @pstudent = Pstudent.new


  end



  def terms
    @pstudent = Pstudent.new
  end

  def privacy
    @pstudent = Pstudent.new
  end
  def methodology
    @pstudent = Pstudent.new
  end

end
