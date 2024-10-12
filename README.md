# Book

This project is a simple Ruby on Rails application that allows you to create, view, edit and delete books. It uses Rails conventions, including RESTful routes, models, views, and controllers, making it a complete solution for book management.


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
rails generate model Book title:string author:references
```

## Gerate ths controllers
```
rails generate controller Books
```

or 

```
rails generate controller Books
```

## Compile project
```
rails s
```
