# Sinatra-Sqlite3-who-work
=============================

подключение базы

def get_db
  db = SQLite3::Database.new 'barbershop.db'
  db.results_as_hash = true
  return db
end
