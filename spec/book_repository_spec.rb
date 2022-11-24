require 'book_repository'

RSpec.describe BookRepository do 

    def reset_book_table 
        seed_sql = File.read('spec/seeds_books.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store' })
        connection.exec(seed_sql)
    end 

    before(:each) do 
        reset_book_table
    end 

    it "returns 1 book" do 
     repo = BookRepository.new 
     books = repo.all 

     expect(books.length).to eq(1)
     expect(books.first.id).to eq('1') 
     expect(books.first.title).to eq('Welcome home') 
     expect(books.first.author_name).to eq('Dr. House') 
    end 
end 

