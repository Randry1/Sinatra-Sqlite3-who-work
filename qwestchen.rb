#Запросы

#Create table

db = get_db
  db.execute 'CREATE TABLE IF NOT EXISTS "Users"
    (
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
       "Name" VARCHAR,
       "phone" VARCHAR,
        "dateStamp" VARCHAR,
        "barber" VARCHAR,
        "color" VARCHAR
    );'
  db.execute 'CREATE TABLE IF NOT EXISTS "Barber"
    (
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "barber" VARCHAR
    );'
    
  
 #qwestchen
 
 #insert
 
  db = get_db
  db.execute "INSERT INTO Users (Name, phone, dateStamp, barber, color) VALUES (?, ?, ?, ?, ?);" , [@username, @phone, @datetime, @barber, @color]

#show
    db = get_db
  @table_barber = db.execute 'SELECT * FROM Barber ORDER BY id DESC'
  
  #-----------------erb-----------------
  
  <table border="1" class="table table-bordered table-hover">
      <caption><h3>Таблица запросов пользователей</h3></caption>
      <thead>
      <tr>
        <th>Номер</th>
        <th>Имя</th>
        <th>Телефон</th>
        <th>Дата</th>
        <th>Парикмахер</th>
        <th>Цвет</th>
      </tr>
      </thead>
      <tbody>
      <% @hashRow.each do |row| %>
          <tr>
            <td> <%= row['id'].to_s %> </td>
            <td> <%= row['Name'].to_s %> </td>
            <td> <%= row['phone'].to_s	%> </td>
            <td> <%= row['dateStamp'].to_s %> </td>
            <td> <%= row['barber'].to_s %> </td>
            <td style="background-color: <%= row['color'] %>"> <%= row['color'].to_s %> </td>
          </tr>
      <% end %>
      </tbody>
    </table>
  
    
