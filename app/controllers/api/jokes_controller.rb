class Api::JokesController < ApplicationController
  before_action :set_joke, only: [:show, :update, :destroy]

  def index
   render json: Joke.order('id ASC')
  end

  def create
    joke = Joke.new(joke_params)
    if joke.save
      render json: joke
    else
      render json: { message: joke.errors }, status: 400
    end
  end

  def show
    render json: @joke
  end

 def update
   if @joke.update(joke_params)
     render json: @joke
   else
     render json: { message: joke.errors}, status: 400
   end
 end

 def destroy
   if @joke.destroy
     render json: { message: 'Successfully Removed Item' }, status: 204
   else
     render json: { message: 'Unable to Delete'}, status: 400
   end
 end


  private

  def set_joke
    @joke = Joke.find_by(id: params[:id])
  end

  def joke_params
    params.require(:joke).permit(:description, :author, :category, :rating, :img_url)
  end

end
