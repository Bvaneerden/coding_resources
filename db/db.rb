require 'pg'

def run_sql(sql, params = [])
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'coding_resources'})
  data = db.exec_params(sql, params)
  db.close
  data
end