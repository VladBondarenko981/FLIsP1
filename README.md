МОНУ НТУУ КПІ ім. Ігоря Сікорського ФПМ СПіСКС

Звіт з лабораторної роботи 1
"Обробка списків з використанням базових функцій"
дисципліни "Вступ до функціонального програмування"

Студент: Бойко Дмитро Павлович КВ-11


Рік: 2024


Загальне завдання
Створіть список з п'яти елементів, використовуючи функції LIST і CONS . Форма створення списку має бути одна — використання SET чи SETQ (або інших допоміжних форм) для збереження проміжних значень не допускається. Загальна кількість елементів (включно з підсписками та їх елементами) не має перевищувати 10-12 шт. (дуже великий список робити не потрібно). Збережіть створений список у якусь змінну з SET або SETQ . Список має містити (напряму або у підсписках): • хоча б один символ • хоча б одне число • хоча б один не пустий підсписок • хоча б один пустий підсписок
Отримайте голову списку.
Отримайте хвіст списку.
Отримайте третій елемент списку.
Отримайте останній елемент списку.
Використайте предикати ATOM та LISTP на різних елементах списку (по 2-3 приклади для кожної функції).
Використайте на елементах списку 2-3 інших предикати з розглянутих у розділі 4 навчального посібника.
Об'єднайте створений список з одним із його непустих підсписків. Для цього використайте функцію APPEND.
Варіант 2
![image](https://github.com/user-attachments/assets/d1946b28-7025-424b-a7f6-f78769b3093e)




;; Пункт 1: Створюємо список
(setq my-list (list 'X 42 (list 'Y 7) '() "world"))

;; Пункт 2: Отримання голови списку
(car my-list) ;; X

;; Пункт 3: Отримання хвоста списку
(cdr my-list) ;; (42 (Y 7) NIL "world")

;; Пункт 4: Отримання третього елемента списку
(third my-list) ;; (Y 7)

;; Пункт 5: Отримання останнього елемента списку
(car (last my-list)) ;; "world"

;; Пункт 6: Використання предикатів ATOM і LISTP
(atom (car my-list)) ;; T, X — атом
(atom (third my-list)) ;; NIL, (Y 7) — список
(atom (car (last my-list))) ;; T, "world" — атом
(listp (third my-list)) ;; T, (Y 7) — список
(listp (car my-list)) ;; NIL, X — не список
(listp (cdr (third my-list))) ;; T, список (7)

;; Пункт 7: Використання інших предикатів
(+ 10 (second my-list)) ;; 52, бо 42 — число
(numberp (second my-list)) ;; T, 42 — це число
(eql (second my-list) 42) ;; T, значення збігається

;; Пункт 8: Об'єднання списку з його непустим підсписком
(append my-list (third my-list))
;; Результат: (X 42 (Y 7) NIL "world" Y 7)

;; Додаткове завдання
;; Створення списку із використанням обмеженої кількості форм конструювання
(let ((sublist (list 1 2)))
  (setq structured-list 
        (list (list 'A sublist)
              'B
              (cdr sublist)
              'C)))
;; Результат: ((A (1 2)) B (2) C)

;; Перевіряємо структуру
(car structured-list) ;; (A (1 2))
(third structured-list) ;; (2)
(last structured-list) ;; (C)
