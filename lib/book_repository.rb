require_relative './book'

class BookRepository
    def all 
        books = []
        sql = 'SELECT id, title, author_name FROM books'
        result_set = DatabaseConnection.exec_params(sql, [])

        result_set.each do |data|
            book = Book.new 

            book.id = data['id']
            book.title = data['title']
            book.author_name = data['author_name']

            books << book 
        end 
        return books 
    end 
end 