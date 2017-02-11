#Наполнение базы с проверкой

#Проверка
def is_barber_exists? db, name
  db.execute('SELECT * FROM Barber WHERE "barber"=?',[name]).length > 0
end

#Напролнение
def seed_db db, barbers
  barbers.each do |item|
    unless is_barber_exists? db, item
      db.execute 'INSERT INTO Barber ("barber") VALUES (?);', [item]
    end
  end
end
