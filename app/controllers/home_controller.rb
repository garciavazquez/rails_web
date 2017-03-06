class HomeController < ApplicationController

  layout "application"
  def index

    @title = 'El titulo de la variable de instancia en index'
    @@db = DB.new

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
    if request.post?
      user = User.new params[:name], params[:password]
      params[:name]
      puts "Usuario"
      puts user.name
      @@db.add_user! user
    end
    @users = @@db.users

  end
end
