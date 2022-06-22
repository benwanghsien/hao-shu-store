class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def show; end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)

    if book.save
      redirect_to root_path, notice: "create successfully"
    else
      flash[:alert] = "create failed"
      render :new
    end
  end

  def edit; end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book), notice: "update successfully"
    else
      flash[:alert] = "update failed"
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path, notice: "delete successfully"
  end

  private

  def book_params
    params.require(:book).permit(:title, :price)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
