# Scrumban Server

- 📖 [Description](#description)
- 🖥️ [Install](#install)
- 👟 [Run](#run)

## 📖 Description

This is a Ruby server for use with the associated [React client](https://github.com/NicMortelliti/scrumban-client).

The server accepts the following HTTP requests:
| **Path** | **Request Type** | **Action** |
|------------|------------------|---------------------------------------------------------------------------------|
| / | GET | Retrieve all tasks with associated project and assigned user. |
| /users | GET | Retrieve all users. |
| /projects | GET | Retrieve all projects. |
| /tasks | GET | Retrieve all tasks. |
| /tasks | POST | Add new task to database. Then, receive the new task, user and project details. |
| /tasks/:id | PATCH | Update task matching id. Then, receive updated task, user and project details. |
| /tasks/:id | DELETE | Delete task matching id. |

### Entity-Relationship
The Entity-Relationship Diagram below displays the 

![ERD](assets/erd.png)

--- 

## 🖥️ Install

### Clone the repository

```shell
git clone git@github.com:NicMortelliti/scrumban-server.git server
cd server
```

### Check your Ruby version

```shell
ruby -v
```

The output should start with something like `ruby 2.7`.

If not, install the right ruby version using [rvm](https://rvm.io/). If using a linux-based system, I highly recommend following the [installation guide](https://wiki.archlinux.org/title/RVM) from the arch wiki instead:

```shell
rvm install 2.6
```

### Install dependencies

Using [Bundler](https://bundler.io/):

```shell
bundle install
```

### Initialize the database

```shell
rake db:migrate db:seed
```

## 👟 Run

### Start the server

```shell
rake server
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
