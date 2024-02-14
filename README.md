Создаём две таблицы в бд, Students и Books
1) Students - имена объектов, айдишник, референс отсюда к книгам по id
2) Books - айди, название книги, референс к студенту по айди (ищём к кому прикреплена книга) , дата взятия, дата когда вернул(если вернул)
Далее
Представление BadStudents, кто не вернул ещё не врнул книгу, тот попадает в эту книжечку.

![image](https://github.com/KNO110/Borrowed_books/assets/37769458/098adbcb-0c28-419b-99f5-143e02825b95)
![image](https://github.com/KNO110/Borrowed_books/assets/37769458/3e112a60-e193-4e61-9578-47fafc14e896)

--------
Итог ответа на запрос вывода badstudents
![image](https://github.com/KNO110/Borrowed_books/assets/37769458/7f654214-70e1-4a57-9c0e-b3d92a46a24a)
![bee47d820a8169dafb4d2ec7bd9d58cd](https://github.com/KNO110/Borrowed_books/assets/37769458/80e7a3ea-d69a-4435-b8e6-77d2cc1bf80e)
