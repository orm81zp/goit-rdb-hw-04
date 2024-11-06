USE LibraryManagement;

INSERT INTO
  authors (author_name)
VALUES
  ('Stephen King'),
  ('John Gwynne');

INSERT INTO
  genres (genre_name)
VALUES
  ('Horror'),
  ('Fantasy');

INSERT INTO
  books (title, publication_year, author_id, genre_id)
VALUES
  ('You Like It Darker', 2024, 1, 1),
  ('The Fury of the Gods', 2021, 2, 2);

INSERT INTO
  users (username, email)
VALUES
  ('JohnWoo', 'johnWoo1234@google.com'),
  ('QuentinEmberly', 'quentinEmberly@yahoo.com');

INSERT INTO
  borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
  (1, 1, '2024-01-01', '2024-01-18'),
  (2, 2, '2023-01-01', '2023-03-10');