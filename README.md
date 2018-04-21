Still need to be done:
- more tests,
- Mailer for contact form

----------------------------------------------------------------------------------
Hello WWSI my old friend...

testing specs for Movie:
title: string
year: integer
director: string
photo_url: string
review: text

- title, year, director, photo_url and review must be present
- year must be > 1900
- review must be > 140

testing specs for User:
name: string
email: string
password: string

- name, email, password must be present
- email must be unique
- email must have valid format
- email must be shorter than 105 characters
- password must be longer than 5 characters

testing specs for Comments
user_id: integer
commentable_id: integer
commentable_type: string
grade: integer
content: string

- user_id, commentable_type, commentable_id, grade and content must be present
- content must be longer than 40 characters

collaborators:
- Robert Kusmirek
- Wojciech Bucko
