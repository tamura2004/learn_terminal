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
  exec "select * from attraction left outer join city on attraction.ciry_id = city.ciry_id left outer join country on attraction.country_id = country.country_id"
end
