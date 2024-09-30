# Book and Author

This project demonstrates the use of Ruby on Rails conventions, including RESTful routes, models, views, and controllers, making it a comprehensive solution for managing a bookstore.

## Start project 
```
rails new project
```

## Start migrate of BD
```
rails db:migrate
```
## Create models
```
rails generate model Author name:string
rails generate model Book title:string author:references
```

## Gerate ths controllers
```
rails generate controller Authors
rails generate controller Books
```

or 

```
rails generate controller Authors && rails generate controller Books
```

## Compile project
```
rails s
```
