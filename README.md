# Project Setup and Running Guide

## Prerequisites

Before running this application, ensure you have the following installed:

- Ruby 3.2.0
- Bundler
- SQLite3
- Node.js (for JavaScript runtime)

## Setting Up the Application

Follow these steps to set up and run the application:

1. **Clone the repository**

   ```sh
   git clone <repository_url>
   cd <repository_directory>

   ## Install dependencies

Run the following command to install the required gems:

```sh

bundle install
Set up the database
Run the following commands to create and set up the database:

sh
Copy code
rails db:create
rails db:migrate
Running the Application
Start the Rails server
Run the following command to start the server:

sh
Copy code
rails server
Access the application
Open your web browser and navigate to http://localhost:3000 to see the application running.

To run React + RubyonRails 
bundle install
yarn install
foreman start -f Procfile.dev
