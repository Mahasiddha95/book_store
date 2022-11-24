require_relative 'lib/database_connection'
require_relative 'lib/book_repository'
require_relative 'lib/book'

DatabaseConnection.connect('book_store')

book_repository = BookRepository.new 

book_repository.all.each do |book|
    p "#{book.id} - #{book.title} - #{book.author_name}"
end 
 
