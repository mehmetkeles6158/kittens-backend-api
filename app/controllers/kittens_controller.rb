class KittensController < ApplicationController
  def index
    kittens = Kitten.all
    render json:kittens
  end

  def show
    the_id = params[:id]
    kitten = Kitten.find_by(id:the_id)
    render json:kitten
  end

  def create
    kitten = Kitten.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      image: params[:image]
    )
    kitten.save!
    render json:kitten
  end

  def update
    the_id = params[:id]
    kitten = Kitten.find_by(id: the_id)
    kitten.name = params[:name] || kitten.name
    kitten.breed = params[:breed] || kitten.breed
    kitten.age = params[:age] || kitten.age
    kitten.image = params[:image] || kitten.image
  
    kitten.save
    render json:kitten
  end
  
end
