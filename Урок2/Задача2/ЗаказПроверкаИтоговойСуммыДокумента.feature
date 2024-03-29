﻿#language: ru

@tree

Функционал: Проверка заполнения сумма заказа

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения сумма заказа
* Заполнение шапки
И Заполнение шапки заказа
*Заполнение Табличной части
И Заполнение табличной части
*Проверка реквизита формы Количество (Итого)
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '4'
* Удаление строки из табличной части
	И в таблице 'Товары' я удаляю строку
	
*Проверка реквизита формы Количество (Итого) после удаления элемента
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '3'
*Очистка таблица
	И в таблице 'Товары' я удаляю строку
	И в таблице 'Товары' я удаляю строку
	
*Проверка реквизита формы Количество (Итого) после очистки таблицы
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '0'
