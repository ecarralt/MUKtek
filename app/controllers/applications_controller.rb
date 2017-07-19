class ApplicationsController < ApplicationController

  def show

  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new
    @application.course = params[:application][:course]
    @application.first_name = params[:application][:first_name]
    @application.last_name_materno = params[:application][:last_name_materno]
    @application.last_name_paterno = params[:application][:last_name_paterno]
    @application.email = params[:application][:email]
    @application.phone = params[:application][:phone]
    @application.universidad = params[:application][:universidad]

    @application.DOB_day = params[:application][:DOB_day].to_i
    @application.DOB_month = params[:application][:DOB_month]
    @application.DOB_year = params[:application][:DOB_year].to_i

    @application.requisitos = params[:application][:requisitos]
    @application.a1_como_te_enteraste = params[:application][:a1_como_te_enteraste]
    @application.a2_poque_HTMLyCSS = params[:application][:a2_poque_HTMLyCSS]
    @application.a3_logictest1_Laura = params[:application][:a3_logictest1_Laura]
    @application.a4_logictest2_arboles = params[:application][:a4_logictest2_arboles]

    if @application.save
      redirect_to thank_you_path
    else
      flash[:notice] = "Hubo un error guardando tu solicitud.
      Acuérdate de llenar todos los campos siguiendo los ejemplos!"
      render :new
    end
  end

  def thankyou

  end

end
