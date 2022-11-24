-- -- Write your SQL seed here. 

-- -- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- -- so we can start with a fresh state.
-- -- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE public.books RESTART IDENTITY; -- replace with your own table name.

-- -- Below this line there should only be `INSERT` statements.
-- -- Replace these statements with your own seed data.

 INSERT INTO public.books (id, title, author_name) VALUES ('1', 'Welcome home', 'Dr. House');
