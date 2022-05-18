def all_resources
  run_sql("SELECT * FROM resources ORDER BY id")
end

def create_resource(name, description, url)
  run_sql("INSERT INTO resources (name, description, url) VALUES($1, $2, $3)", [name, description, url])  
end

def get_resource(id)
  run_sql("SELECT * FROM resources WHERE id = $1", [id])[0]
end

def update_resource(name, description, url, id)
  run_sql('UPDATE resources SET name = $1, description = $2, url = $3 WHERE id = $4', [name, description, url, id])
end

def delete_resource(id)
  run_sql("DELETE FROM resources WHERE id = $1", [id])
end