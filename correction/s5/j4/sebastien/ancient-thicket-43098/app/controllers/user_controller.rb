class UserController < ApplicationController
  def show
 	num = params[:id]
  	@gossips = Gossip.find(num)
  end

  def new

  end 

  def create 
  	
    if City.find_by(name: "params[:city]") == nil 

    puts "@@@@"*60
    @c = City.new(name:params[:city])
    @u = User.new(first_name:params[:first_name], last_name:params[:last_name], age:params[:age], email:params[:email], password:params[:psw], city_id: @c.id)
    @u.save
    puts @u.errors
    puts "@@@@"*60
    redirect_to('/')

  else 

    puts "@@@@"*60
    @cc = City.find_by(name: "params[:city]")
    @u = User.new(first_name:params[:first_name], last_name:params[:last_name], age:params[:age], email:params[:email], password:params[:psw], city_id: @cc.id)
    @u.save
    puts @u.errors
    puts "@@@@"*60
    redirect_to('/')

    end 

  end 

end
