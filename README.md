# Rabota
Выполнение тестового задания для кандидата в стажеры-программисты
Задание 1
Напишите программу на PHP для вывода первых 64 чисел Фибоначчи.
<?php
$a = array();   
$a[1] = '1'; 
$a[2] = '1';
for ($i = 3; $i < 65; $i++) {
$a[$i] = bcadd($a[$i-1], $a[$i-2]);
}
for ($i = 1; $i < 65; $i++) {
echo($i."-".$a[$i].", <br/>\n");
}
echo("...\n");
?>
Задание 2
Спроектируйте структуру базы данных MySQL/PostgreSQL для библиотеки, удовлетворяющую следующим требованиям:

необходимо хранить только авторов и книги;
книга может быть написана в соавторстве (несколькими авторами);
автор за свою жизнь может написать несколько книг.

Напишите SQL-запрос, который выведет авторов, написавших не более 6 книг.

CREATE TABLE avtors(idAvtor int, Name varchar(100) NOT null, PRIMARY KEY(idAvtor))

CREATE TABLE books(idBook int, Book varchar(100) NOT null, idAvtor int NOT null, idSoAvtor1 int, idSoAvtor2 int, idSoAvtor3 int, idSoAvtor4 int, idSoAvtor5 int, PRIMARY KEY(idBook))

SELECT DISTINCT avtors.Name FROM avtors INNER JOIN books ON avtors.idAvtor = books.idAvtor WHERE avtors.idAvtor IN (SELECT books.idAvtor FROM books WHERE books.idAvtor GROUP BY books.idAvtor HAVING COUNT(*) <= 6)

Задание 3
Реализовать на PHP структуру классов, описывающих следующие фигуры: прямоугольник, круг, треугольник.
Описать функцию для нахождения площади фигуры.
Реализовать:

генерацию случайных объектов классов с заполнением полей случайными значениями
сохранение объектов в файл в любом удобном представлении
получение объектов из файла

Отсортировать полученную коллекцию объектов по убыванию площади фигуры и вывести результат на экран.
