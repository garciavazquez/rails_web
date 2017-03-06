class DB

  attr_accessor :users

  def initialize
    @users = Array.new
  end

  def add_user! (user)
    @users << user
  end

  def delete_user! (user)
    @users.delete(user)
  end

end
