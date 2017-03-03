class HomeController < ApplicationController

  layout "application"
  def index

    @title = 'El titulo de la variable de instancia en index'

    respond_to do |format|
      format.html
      format.xml
    end
  end

  def about_us
    @title = 'Quiénes somos?'
  end

  def contact
    @ip = request.remote_ip
  end

  def location
    @title = 'Localización'
  end

  def services
    if request.get?
      @title = 'Servicios - GET'
    else
      @title = "Servicios - POST #{params[:id]}"
    end
  end
end
