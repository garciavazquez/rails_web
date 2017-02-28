class HomeController < ApplicationController
  def index

    @title = 'El titulo de la variable de instancia en index'

    respond_to do |format|
      format.html
      format.xml
    end
  end

  def about_us
  end

  def contact
    @ip = request.remote_ip
  end
end
