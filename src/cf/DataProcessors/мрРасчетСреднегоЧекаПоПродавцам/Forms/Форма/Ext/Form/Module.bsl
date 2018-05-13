﻿
&НаКлиенте
Процедура ЗапуститьЗадание(Команда)
	ЗапуститьЗаданиеНаСервере();
КонецПроцедуры

&НаСервере
Процедура ЗапуститьЗаданиеНаСервере()
	
	Менеджер = РеквизитФормыВЗначение("Объект");
	
	ПараметрыЗадания = Новый Структура("");
	ПараметрыЗадания.Вставить("ДатаНачала");
	ПараметрыЗадания.Вставить("ДатаОкончания");
	ПараметрыЗадания.Вставить("КоличествоБлоковШагаМАП");
	ПараметрыЗадания.Вставить("КоличествоБлоковШагаШафл");

	ЗаполнитьЗначенияСвойств(ПараметрыЗадания, Менеджер);
	
	ПараметрыОбработки = Новый Структура();
	ПараметрыОбработки.Вставить("Менеджер", "мрРасчетСреднегоЧекаПоПродавцам");
	ПараметрыОбработки.Вставить("Параметры", ПараметрыЗадания);
	
	//MapReduce.ЗапуститьПроцессMapReduce(ПараметрыОбработки);
	MapReduce.МастерПроцесс(ПараметрыОбработки);
	                                   
КонецПроцедуры
