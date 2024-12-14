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
