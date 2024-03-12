CREATE TABLE if NOT EXISTS waiter_restaurant (
id_restaurant INTEGER,
id_waiter INTEGER,
FOREIGN KEY (id_restaurant) REFERENCES restaurant(id),
FOREIGN KEY (id_waiter) REFERENCES waiters(id)
);
INSERT INTO waiter_restaurant (id_restaurant, id_waiter) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 1), (4, 2), (5, 3), (5, 4),
(6, 5), (6, 6), (7, 1), (7, 2), (8, 3), (8, 4);

--Получить название, адрес и контактный телефон ресторана с идентификатором 1.
--SELECT title, address, phone FROM restaurant WHERE id = 1;
--Получить номера и вместимость столов, доступных для бронирования
-- в ресторане с идентификатором 2.
--SELECT number, number_of_seats, avialable, restaurant_id FROM tables LEFT JOIN 
--tables_restaurant on table_id = tables.id WHERE restaurant_id = 2;
--Получить информацию о бронированиях, включая идентификатор бронирования,
-- имя клиента, номер столика и время бронирования для столов
-- из ресторана с идентификатором 3.
--SELECT id, user_name, table_number, date_reserv, time_reserv, title_restaurant
--FROM reservations WHERE reservations.id_title_restaurant = 3;
--Получить идентификатор и имя официантов, работающих в ресторане
-- с идентификатором 4.
--SELECT waiters.id, waiters.name, id_restaurant FROM waiters LEFT JOIN
-- waiter_restaurant on id_waiter = waiters.id WHERE id_restaurant = 4;
--Получить все данные о бронировании с идентификатором 4.
--SELECT * FROM reservations WHERE reservations.id = 4;
--Получить общее количество столов в ресторане с идентификатором 8.
--SELECT count (*) FROM tables_restaurant WHERE restaurant_id = 8;
--Получить номера и вместимость столов, вместимость которых меньше или равна 4.
--SELECT number, number_of_seats FROM tables WHERE number_of_seats <= 4;
--Найти всех клиентов, имя которых содержит "Дмитрий".
--SELECT user_name FROM reservations WHERE user_name like "%Дмитрий%";

