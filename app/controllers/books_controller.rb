class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_url
		else
			render :new
		end
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])

		if @book.update_attributes(book_params)
			redirect_to "/books/#{@book.id}"
		else
			render :edit
		end

	end

	def delete
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to "/books"
	end

	def upvote
		@book = Book.find(params[:id])
		Book.increment_counter(:upvote, @book.id)
		redirect_to request.referer || "/books/#{@book.id}"
	end
		
	def downvote
		@book = Book.find(params[:id])
		Book.increment_counter(:downvote, @book.id)
		redirect_to request.referer || "/books/#{@book.id}"
	end		

	private

	def book_params
		params.require(:book).permit(:author,:title,:year,:description,:url)
	end
end
