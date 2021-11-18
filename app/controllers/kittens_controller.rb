class KittensController < ApplicationController
  def index
    kittens = Kitten.all
    render json:kittens
  end
  def create
    kitten = Kitten.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
    kitten.save
    render json:kitten
  
  end
end
