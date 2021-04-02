require "sinatra"

def exec(sql)
  `echo "#{sql};" | sqlite3 travel.db`
end

get "/country" do
  exec "select * from country"
end

get "/city" do
  exec "select * from city left outer join country on city.country_id = country.country_id"
end

get "/attraction" do
  exec "select * from attraction a,country b,city c where a.country_id = b.country_id and a.city_id = c.city_id and b.country_id =  c.country_id"
end
