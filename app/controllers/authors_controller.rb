class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new(author_params)
    if author.save
      redirect_to authors_path, notice: "Author was successfully created."
    else
      render :new
    end
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end
end
