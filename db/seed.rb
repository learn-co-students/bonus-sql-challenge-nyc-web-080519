# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require "pry"

require "sqlite3"
require 'csv'

#DB = {:conn => SQLite3::Database.new("db/daily_show_guests.db")}
#DB[:conn] = SQLite3::Database.new ":memory:"

# Create a database
rows = DB[:conn].execute <<-SQL
  CREATE TABLE IF NOT EXISTS guests (
    id INTEGER PRIMARY KEY,
    year TEXT,
    occupation TEXT,
    date TEXT,
    category TEXT,
    name TEXT
  );
SQL

#csv = CSV.read('daily_show_guests.csv', headers:true)
# csv = <<CSV
# year,occupation,date,category,name
# 2000,actress,2019-08-14,acting,Jennifer Aniston
# 2001,actor,2019-08-13,acting,Brad Bitt
# CSV


CSV.foreach('daily_show_guests.csv', headers: true) do |row|
    #binding.pry
    DB[:conn].execute("INSERT INTO guests VALUES (?, ?, ?, ?, ?, ?)", row.fields)
  end
  
  DB[:conn].execute("SELECT * FROM guests")