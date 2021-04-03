require "sinatra"
require "sqlite3"
require "terminal-table"

def exec(sql)
  conn = SQLite3::Database.new("travel.db")
  Terminal::Table.new(rows: conn.execute(sql)).to_s + "\n"
end

get "/country" do
  exec "select * from country;"
end

get "/country/:id" do |id|
  exec "select * from country where country_id = #{id};"
end

get "/city" do
  exec "select * from city, country where city.country_id = country.country_id;"
end

get "/attraction" do
  exec open("attraction.sql").read
end
