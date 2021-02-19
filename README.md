# RoR REST API

Simple RoR REST API example

## Installation

Satisfy all its gem dependencies:

```bash
bundle install
```

Create its database
```bash
rails db:create
```

Create tables on the DB

```bash
rails db:migrate
```

Run server on port 3000

```bash
rails s -p 3000
```

## Usage

You can point to the two endpoints of our REST API through following routes:

* GET    /api/v1/posts/:post_id/comments
* POST   /api/v1/posts/:post_id/comments
* GET    /api/v1/posts/:post_id/comments/:id
* PATCH  /api/v1/posts/:post_id/comments/:id
* PUT    /api/v1/posts/:post_id/comments/:id
* DELETE /api/v1/posts/:post_id/comments/:id
* GET    /api/v1/posts
* POST   /api/v1/posts
* GET    /api/v1/posts/:id
* PATCH  /api/v1/posts/:id
* PUT    /api/v1/posts/:id
* DELETE /api/v1/posts/:id

In order to make it easy to send request to our RoR REST API,
you can use *[postman](https://www.postman.com/)*

## Contributing
Pull requests are welcome. For major changes, please open an issue,
first to discuss what you would like to change.