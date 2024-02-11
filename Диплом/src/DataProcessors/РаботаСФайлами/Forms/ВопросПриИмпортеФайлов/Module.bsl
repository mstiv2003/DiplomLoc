///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2022, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution 4.0 International (CC BY 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ФайлыБольшие = Параметры.ФайлыБольшие;
	
	МаксимальныйРазмерФайла = Цел(РаботаСФайлами.МаксимальныйРазмерФайла() / (1024 * 1024));
	
	Сообщение = СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
	    НСтр("ru = 'Некоторые файлы превышают предельный размер (%1 Мб) и не будут добавлены в хранилище.
	               |Продолжить импорт?'"),
	    Строка(МаксимальныйРазмерФайла) );
	
	Заголовок = Параметры.Заголовок;
	
	Если ОбщегоНазначения.ЭтоМобильныйКлиент() Тогда
		ПоложениеКоманднойПанели = ПоложениеКоманднойПанелиФормы.Верх;
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти
