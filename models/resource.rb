def all_resources
  run_sql("SELECT * FROM resources ORDER BY id")
end

def create_resource(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python)
  run_sql("INSERT INTO resources (name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)", [name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python])  
end

def get_resource(id)
  run_sql("SELECT * FROM resources WHERE id = $1", [id])[0]
end

def update_resource(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python, id)
  run_sql('UPDATE resources SET name = $1, description = $2, url = $3, html = $4, css = $5, javascript = $6, ruby = $7, ruby_on_rails = $8, postgresql = $9, python = $10 WHERE id = $11', [name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python, id])
end

def delete_resource(id)
  run_sql("DELETE FROM resources WHERE id = $1", [id])
end

def sort_resources(language)
  run_sql("SELECT * FROM resources WHERE #{language}")
end