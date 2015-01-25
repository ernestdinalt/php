
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2015 at 03:24 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1463586_photo11`
--

-- --------------------------------------------------------

--
-- Table structure for table `gnar_articles`
--

CREATE TABLE `gnar_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `full_text` text NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gnar_articles`
--

INSERT INTO `gnar_articles` VALUES(1, 2, 'Баланс белого цвета в цифровой фотографии', '<p>В цифровой фотографии «баланс белого цвета» может быть реализован на трёх этапах...\r\n</p>', '<p>В цифровой фотографии «баланс белого цвета» может быть реализован на трёх этапах:\r\n</p><p>\r\nИзменение коэффициентов усиления аналоговых усилителей в цветовых каналах матрицы. Данный метод позволяет получить бо́льшую фотографическую широту не при одной (оптимальной для данного типа матрицы) цветовой температуре освещения, а во всём доступном диапазоне цветовых температур. Применяется фирмой Pentax, например, в аппаратах Pentax *ist Ds.\r\nОбработка оцифрованных данных при преобразовании в графический файл внутри фотоаппарата.\r\nОбработка Raw файла на компьютере.\r\nВ отличие от плёночной фотографии, постобработкой цифровых изображений легко достигается не только баланс светочувствительности, но и баланс контрастности.\r\n</p><p>\r\nРежимы в цифровом фотоаппарате.\r\nУстановка баланса белого в современном (после 2005 года) цифровом фотоаппарате может осуществляться следующими способами:\r\n</p><p>\r\nСъёмка в формате Raw позволяет выставлять баланс белого после съёмки на компьютере. В этом случае установка баланса белого на аппарате полезна для правильного показа превью на экране аппарата после съёмки или при работе электронного видоискателя. Конечно же, такой способ настройки баланса белого не обходится без потерь.</p><p>\r\nВо многих цифровых фотоаппаратах фотограф с помощью специальной кнопки или в меню может вручную устанавливать тип освещения кадра — солнце, дневной свет, голубое (тень) и облачное небо, люминесцентная лампа, лампа накаливания с вольфрамовой нитью, фотовспышка и т. д. и камера делает поправку на соответствующую цветовую температуру.\r\nДругой ручной режим — цветокоррекция по серой карте, требует некоторого времени и ухудшает оперативность съёмки, но результаты обычно получаются наилучшие. В этом режиме фотограф помещает рядом с объектом съёмки специальную карту нейтрально-серого цвета и, прежде чем начать собственно съёмку, калибрует камеру по этой карте. Цветокоррекция по листу белой бумаги не даёт идеального результата, потому что при производстве бумаги для отбеливания используются различные красители. В случае же с серой картой производитель может гарантировать, что это сочетание только чёрного и белого цветов.\r\nНекоторые «продвинутые» аппараты позволяют задать источник освещения непосредственно в градусах Кельвина — это полезно при студийной съёмке, когда цветовая температура осветительных приборов заранее известна из их паспортов или может быть измерена колориметром.</p><p>\r\nАвтоматический баланс белого. Логика процессора исходит из предположения, что усреднённо кадр нейтрален в цвете, и самые яркие фрагменты кадра имеют нейтрально-белый цвет, а все остальные цвета корректируются относительно них. Для цветокоррекции в цифровой технологии достаточно изменить коэффициенты усиления в нужных цветовых каналах. Мало синего? — повышаем коэффициент усиления синего канала и получаем снимок, как бы сделанный не в свете ламп накаливания, а при дневном освещении. Подобный алгоритм работает хорошо в некотором диапазоне цветовых температур и при тепловом характере спектра освещения. Но в сложных условиях, когда яркий цвет не является белым, кадр имеет искажённую цветопередачу.</p>', 'Баланс белого цвета в цифровой фотографии', 'Баланс белого цвета в цифровой фотографии', 1402919319);
INSERT INTO `gnar_articles` VALUES(2, 1, 'Виды цветовых кругов', '<center><img src="img/color_wheel_2.jpg" alt="color wheel" height="300" width="200" vspace="7"></center><p><b>Виды цветовых кругов</b></p>', '<center><img src="img/color_wheel_2.jpg" alt="color wheel" height="600" width="400" vspace="7"></center><p><b>Виды цветовых кругов</b></p>\n<p>Первый цветовой круг появился вместе с ранними теориями цвета. Он присутствует в трудах исследователей 17-20 века: Филда, Гете, Манселла, Иттена. Традиционный цветовой круг имел практическое применение в живописи и показывал, как взаимодействуют красители, первичными из которых были красный, жёлтый и синий (RYB). Цветовой круг RYB до сих пор изучается в теории цвета, используется художниками и дизайнерами при подборе цветовых схем. Сегодня помимо цветового круга RYB встречается другой вариант - цветовой круг RGB. В его основе лежит аддитивная модель образования цвета и первичные цвета красный, зелёный и синий. Цветовой круг RGB заметно отличается от круга RYB расположением дополнительных цветов.</p>\n<p>Наиболее распространён восьмисекторный цветовой круг. Он включает 7 цветов радуги и пурпурный. Основными цветами в этом круге считают красный, жёлтый, зелёный, синий, и добавляют к ним четыре «промежуточных» цвета (оранжевый, голубой, фиолетовый и пурпурный). В цветовом круге на равном расстоянии друг от друга расположены чередующиеся первичные и вторичные цвета. Сложение двух первичных цветов даёт вторичный цвет, расположенный между ними.</p>\n<p>Цветовой круг обычно делят на тёплую и холодную половины.</p>\n<p><b>Тёплые цвета:</b> красный, оранжевый, жёлтый и промежуточные оттенки.</p>\n<p><b>Холодные цвета:</b> синий, голубой, зелёный, и переходные — сине-фиолетовый, сине-зелёный.</p>', 'Виды цветовых кругов', 'цветовой круг, иттен', 1402919055);
INSERT INTO `gnar_articles` VALUES(3, 1, 'Дополнительные цвета', '<center><img src="img/color_wheel_3.jpg" alt="color wheel" height="200" width="200"  vspace="7"></center><p><b>Дополнительные цвета</b></p>', '<center><img src="img/color_wheel_3.jpg" alt="color wheel" height="600" width="600"  vspace="7"></center></center><p><b>Дополнительные цвета</b></p>\n<p>Пары цветов, расположенные на круге друг против друга, называются комплементарными, или дополнительными (например, зелёный — красный, жёлтый — фиолетовый, синий — оранжевый).</p>\n<p>Дополнительные цвета – ключевое понятие в цветовом круге и теории цвета. Их противоположность основана на следующих постулатах:\n<ul><li>смешивание двух любых комплиментарных цветов в равных пропорциях даёт нейтральный серый тон</li>\n<li>любой тон рождает в восприятии смотрящего дополнительный и вызывает эффекты последовательного и симультанного контраста</li></ul>\n<p>Однако при использовании некоторых цветовых кругов на практике не удается получить серый цвет путем смешивания противоположных. Кроме того, дополнительные цвета кругов RYB и RGB различаются. Комплиментарные цвета RYB: красный-зелёный, синий-оранжевый, жёлтый-пурпурный. Комплиментарные цвета RGB: красный-бирюзовый, зелёный-пурпурный, жёлтый-синий. Возникает вопрос, какой из цветовых кругов соответствует человеческому восприятию.</p>\n<p>Существует также мнение, что цвета противоположные друг другу на цветовом круге не сочетаются. Однако, природа доказывает нам обратное — например, красная роза очень органично смотрится в обрамлении из зеленых листьев.</p>\n<p>Дополнительные цвета отличаются тем, что при их смешении невозможно получить хроматический цвет. В этом случае мы получаем комплементарные ахроматические оттенки.</p>\n<p>В цветовом круге нет ахроматических цветов, в том числе чёрного цвета.</p>', 'Дополнительные цвета', 'цветовой круг, иттен', 1402919000);
INSERT INTO `gnar_articles` VALUES(4, 2, 'Баланс белого цвета в плёночной фотографии', '<p>Бала́нс цветно́го изображе́ния — более широкая характеристика свойств цветного многослойного фотоматериала (или фотографического процесса), а также изображения, им сформированного, выражающая соответствие (сбалансированность) градационных характеристик цветоделённых изображений.</p>', '<p>Бала́нс цветно́го изображе́ния — более широкая характеристика свойств цветного многослойного фотоматериала (или фотографического процесса), а также изображения, им сформированного, выражающая соответствие (сбалансированность) градационных характеристик цветоделённых изображений.</p><p>\r\nБала́нс экспози́ции — соответствие цветности используемого при съёмке освещения нормированной для данного конкретного фотоматериала цветности освещения. Нормированное освещение задаётся цветовой температурой.\r\n</p><p>\r\nВ случае денситометрических измерений изображения количественно выражается отношением величин цветоделённых световых потоков используемого освещения к величинам цветоделённых световых потоков, обеспечивающим баланс светочувствительности фотоматериала.\r\n</p><p>\r\nПри отличии этих отношений от единицы говорят, что при съёмке имеет место «разбаланс по экспозиции». Таковой может быть устранён при съёмке (обычно применяемые для этого фильтры называют конверсионными) или при печати фотоснимков введением коррекции.\r\n</p><p>\r\nБаланс оптической плотности — степень соответствия плотностей цветоделённых изображений серой шкалы.\r\n</p><p>\r\nДля негативного или дубль-негативного изображения измеряются и сравниваются значения копировальных плотностей, определённых над цветной вуалью\r\nДля позитивного изображения сравниваются визуально-серые плотности.\r\nНарушение баланса оптической плотности — следствие нарушений баланса экспозиции, баланса светочувствительности и баланса контраста. Поэтому баланс плотности может служить их интегральной характеристикой.</p>', 'Баланс белого цвета в плёночной фотографии', 'Баланс белого цвета в плёночной фотографии', 1402919508);
INSERT INTO `gnar_articles` VALUES(5, 2, 'Теоретические нюансы', '<p>Объект заведомо белого цвета кажется человеку белым практически при любом освещении, потому что необходимую цветокоррекцию автоматически проводят человеческий глаз и мозг.\r\n</p>', '<p>Объект заведомо белого цвета кажется человеку белым практически при любом освещении, потому что необходимую цветокоррекцию автоматически проводят человеческий глаз и мозг.\r\n</p><p>\r\nЕсли источник освещения имеет непрерывный спектр тепловой природы, то этому спектру можно поставить в соответствие некоторую температуру, до которой надо нагреть абсолютно чёрное тело, чтобы его излучение имело такой же спектральный состав. Эта температура получила название цветовой температуры. Цветовую температуру измеряют в кельвинах (K).\r\n</p><p>\r\nПламя свечи имеет цветовую температуру около 1800 К, лампы накаливания — 2500 К, восход солнца — 3800 К, лампа-вспышка — 5500 К, голубое безоблачное небо в летний день — 11000 К и выше.\r\n</p><p>\r\nКорректное определение цветовой температуры по спектру источника для флуоресцентных, многих ртутных и низкотемпературных газоразрядных ламп, люминофорных источников света дать невозможно, так как значительная доля излучённой энергии приходится на «линейчатую» часть спектра. Так как в природе такое освещение встречается крайне редко, глаз человека не имеет эффективных средств адаптации к таким источникам. Однако и в этих случаях мозг создаёт «ощущение белого цвета» для соответствующих объектов (например, снега или листа белой бумаги). В таких случаях говорят о «псевдобелом» источнике света и определяют его «цветовую температуру» путём визуального сравнения с образцами.\r\n</p><p>\r\nНаиболее сложная ситуация для «баланса белого» — наличие двух и более разных источников с различной цветовой температурой. В этом случае глаз и мозг человека всё равно «увидят» правильные цвета предметов, однако и плёнка, и телекамера, и цифровой фотоаппарат воспроизведут часть предметов как «цветные».\r\n</p><p>\r\nНапример, если мы выставили баланс белого в цифровом аппарате на «дневной свет», то часть кадра, освещённая лампами накаливания, будет выглядеть жёлтой, флуоресцентными лампами — зелёной, розовой или фиолетовой (для разных типов ламп), на сцене, освещённой безоблачным небом, тени будут голубыми.</p>', 'Теоретические нюансы', 'Теоретические нюансы', 1402919728);
INSERT INTO `gnar_articles` VALUES(6, 3, 'История возникновения', '<p>Слово «кроп-фактор» получило распространение одновременно с появлением гибридов, созданных из серийных зеркальных фотоаппаратов и цифровых приставок с ПЗС-матрицей.</p>', '<p>В плёночной фотографии подобных понятий не существовало, несмотря на огромный диапазон размеров кадрового окна фотоаппаратов. Каждому формату негатива соответствует определённое фокусное расстояние объектива, считающееся нормальным. Обычно оно приблизительно равно диагонали кадра или незначительно её превосходит. Так, для крупноформатных камер с кадром 9×12 см нормальным считается объектив с фокусным расстоянием 135 мм. Для среднеформатного кадра 6×6 см нормальный объектив — 80 мм, а для малоформатного — 50. Объективы с фокусными расстояниями меньшими, чем нормальное, считаются широкоугольными (короткофокусными), а с бо́льшим — длиннофокусными. Так, фокусное расстояние 50 мм, считающееся нормальным для малоформатного кадра, в среднем формате соответствует широкоугольному объективу, а для 16-мм киноплёнки — длиннофокусному. Однако, понятие «кроп-фактор» не использовалось, поскольку для каждого типа аппаратуры с различными размерами кадра выпускались соответствующие объективы, в том числе сменные.</p>\n<p>Слово «кроп-фактор» получило распространение одновременно с появлением гибридов, созданных из серийных зеркальных фотоаппаратов и цифровых приставок с ПЗС-матрицей. Наиболее известны такие гибриды, как Kodak DCS 100 и Canon EOS DCS 3 на основе малоформатных камер. Такие устройства использовали стандартные плёночные объективы для съёмки на матрицы значительно меньших размеров. В 1990-х годах создание крупных матриц было сопряжено с большими технологическими сложностями, и самым большим доступным размером был нынешний APS-H. Матрицы уменьшенного размера до настоящего времени значительно дешевле полнокадровых и используются в цифровых зеркальных фотоаппаратах совместно с объективами, выпущенными для 35-мм фотоплёнки или разработанными позднее для кадра такого же размера. В результате при съёмке используется только центральная часть изображения, даваемого объективом, сужая его расчётный угол поля зрения. В этом случае величина кроп-фактора служит относительной мерой для определения масштаба изображения, даваемого объективом на уменьшенном кадре. Впоследствии понятие кроп-фактора стало применяться во всей цифровой фотографии, как средство сопоставления фотосистем с различным размером матрицы.</p>\n<p>Для цифровых зеркальных фотоаппаратов кроп-фактор обычно находится в пределах 1,0—1,6. Наибольшее распространение получили значения 1,5 и 1,6 (стандарты APS-C и Nikon DX), а величина 1,3 (стандарт APS-H) встречается только в камерах семейства Canon EOS-1D. Кроп-фактор беззеркальных фотоаппаратов обычно выше: 1,5—2 (Samsung NX и Micro 4/3). В некоторых случаях понятие кроп-фактора используется применительно к матрицам большего размера, чем малоформатные. Так, цифровые задники для фотоаппаратов Hasselblad среднего формата 6×6 см, оснащаются матрицей 37×37 мм, обеспечивая кроп-фактор 1,5 относительно исходного плёночного кадра.</p>', 'кроп-фактор', 'кроп-фактор', 1402919942);
INSERT INTO `gnar_articles` VALUES(7, 3, 'Уменьшение поля зрения', '<p>Наличие кроп-фактора уменьшает эффективный угол изображения и сопряжённый с ним угол поля зрения объектива. Например, объектив с фокусным расстоянием 28 мм на полном кадре обладает углом поля зрения примерно 73° по диагонали. На кадре с кроп-фактором 1,6 этот угол составит всего 50° по диагонали, что эквивалентно объективу с фокусным расстоянием примерно 45 мм для 35-мм плёнки.</p>', '<center><img src="img/crop2.png" alt="crop1" height="500" width="500"  vspace="7"></center><p>Наличие кроп-фактора уменьшает эффективный угол изображения и сопряжённый с ним угол поля зрения объектива. Например, объектив с фокусным расстоянием 28 мм на полном кадре обладает углом поля зрения примерно 73° по диагонали. На кадре с кроп-фактором 1,6 этот угол составит всего 50° по диагонали, что эквивалентно объективу с фокусным расстоянием примерно 45 мм для 35-мм плёнки.</p>\n<p>Это неудобно, когда необходим широкий угол. Сверхширокоугольные объективы становятся просто широкоугольными, широкоугольные становятся нормальными.</p>\n<p>Однако для телеобъективов кроп-фактор даёт определённые преимущества. Например, 300-мм объектив с учетом кроп-фактора 1,6 дает такой же угол поля зрения, как 480-миллиметровый. Кроме этого, характеристики у обычных объективов обычно падают к краям, поэтому объективы на меньшей матрице дают более однородное по качеству изображение</p>\n<p>Надо заметить, что конкретный объектив всегда даёт одинаковое изображение, независимо от того, на какую камеру он установлен. Увеличение изображения происходит только потому, что используется его меньшая часть, которая выглядит увеличенной при печати в том же формате.</p>\n<p>Сужения поля зрения объектива на уменьшенной матрице можно избежать применением особой разновидности широкоугольного конвертера, выпускаемого компанией Metabones под названием Speed Booster.\n<p>Устройство предназначено для беззеркальных фотоаппаратов и позволяет сохранить поле зрения «полнокадровых» объективов на матрице размера APS-C. При этом, светосила этих объективов увеличивается пропорционально квадрату кратности конвертера с сохранением глубины резкости.</p>', 'кроп-фактор', 'кроп-фактор', 1402919345);
INSERT INTO `gnar_articles` VALUES(8, 3, 'Некоторые размеры матриц', '<p>Первым в мире серийным фотоаппаратом с полнокадровым сенсором и кроп-фактором, равным единице, в сентябре 2002 года стал Canon EOS-1Ds. За два года до этого Asahi Optical и Kyocera анонсировали полнокадровые фотоаппараты, производство первого из которых Pentax MZ-D так и не было запущено, а камера «Contax N Digital», выпущенная на несколько месяцев ранее Canon, вскоре была снята с производства. До выхода Contax N Digital и EOS-1Ds матрица формата 24×36 мм была доступна только в среднеформатных цифровых задниках, давая со штатной оптикой кроп-фактор 1,6.</p>', '<center><img src="img/crop1.png" alt="crop1" height="337" width="500"  vspace="7"></center>\n<p><b>4/3", 18×13,5 мм, соотношение сторон 4:3</b></p><p>\nСтандарт 4/3 разработан совместно компаниями Olympus, Kodak и несколькими другими. Сейчас (2010 год) камеры с матрицами такого формата производят фирмы Olympus и Panasonic. Декларировались цели снижения стоимости производства, веса камер и объективов.</p>\n<p><b>DX и APS-C, около 25,1×16,7 мм, соотношение сторон 3:2</b></p></p>\nФотосенсоры таких размеров наиболее часто встречаются в цифровых зеркальных, беззеркальных и дальномерных фотоаппаратах. Их площадь примерно соответствует размеру кадра полуформатного фотоаппарата.</p>\n<p><b>APS-H формат, 27×18 мм, соотношение сторон 3:2.</b></p><p>\nФотосенсор с линейными размерами в 1,3 раза меньшими, чем у 35-мм кадра. Разработан фирмой Canon и использовался только в линейке фотоаппаратов Canon EOS-1D, выпуск которой прекращён.</p>\n<p><b>Полнокадровый (англ. full frame) фотодатчик формата 36×24 мм ±1 мм, соотношение сторон 3:2.</b></p>\nПервым в мире серийным фотоаппаратом с полнокадровым сенсором и кроп-фактором, равным единице, в сентябре 2002 года стал Canon EOS-1Ds. За два года до этого Asahi Optical и Kyocera анонсировали полнокадровые фотоаппараты, производство первого из которых Pentax MZ-D так и не было запущено, а камера «Contax N Digital», выпущенная на несколько месяцев ранее Canon, вскоре была снята с производства. До выхода Contax N Digital и EOS-1Ds матрица формата 24×36 мм была доступна только в среднеформатных цифровых задниках, давая со штатной оптикой кроп-фактор 1,6.</p>\n<p>В настоящее время на рынке представлено несколько моделей фотоаппаратов с полнокадровым сенсором (Canon, Nikon, Kodak, Sony). Основной проблемой конструирования и применения таких сенсоров является увеличение угла падения света на краевые области матрицы и связанные с этим эффекты, не свойственные традиционным фотоматериалам:</p>\n<ul><li>виньетирования (на 1 ступень экспозиции больше, чем APS-C);</li><li>\nснижения чёткости и ухудшение цветопередачи изображения к краям (из-за появления эффекта засветки «не своего пиксела» через микролинзу);</li><li>\nснижение качества фильтрации инфракрасного излучения к углам кадра, ухудшающее цветопередачу;</li></ul><p>\nВ сочетании с аберрациями некоторых объективов эти недостатки делают не вполне оправданной покупку любителем аппарата с полнокадровым сенсором. Весь набор преимуществ полнокадровой матрицы (меньшая ГРИП, большая эквивалентная чувствительность, применение ряда плёночных объективов) реализуется с дополнительными затратами. В настоящее время часть проблем полнокадровых матриц решена, в том числе с помощью цифровой компенсации виньетирования.</p>\n<p><b>Среднеформатная матрица формата 60×45 мм, соотношение сторон 4:3.</b></p><p>\nФотосенсоры таких размеров «сшиваются» из матриц меньшего размера, что сказывается на их стоимости. Применяются в цифровых задниках для среднеформатных камер.</p>', 'кроп-фактор', 'кроп-фактор', 1402919345);

-- --------------------------------------------------------

--
-- Table structure for table `gnar_banners`
--

CREATE TABLE `gnar_banners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gnar_banners`
--

INSERT INTO `gnar_banners` VALUES(1, '<!-- START OF HIT COUNTER CODE -->\r\n<br><script language="JavaScript" src="http://www.counter160.com/js.js?img=6"></script><br><a href="http://www.000webhost.com"><img src="http://www.counter160.com/images/6/left.png" alt="Free web hosting" border="0" align="texttop"></a><a href="http://www.hosting24.com"><img alt="Web hosting" src="http://www.counter160.com/images/6/right.png" border="0" align="texttop"></a>\r\n<!-- END OF HIT COUNTER CODE -->\r\n');
INSERT INTO `gnar_banners` VALUES(2, 'тут находиться код банера 2');

-- --------------------------------------------------------

--
-- Table structure for table `gnar_comments`
--

CREATE TABLE `gnar_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `gnar_comments`
--

INSERT INTO `gnar_comments` VALUES(1, 2, 'doof12', 'Скучноватая статтейка все-таки');
INSERT INTO `gnar_comments` VALUES(2, 2, 'foe1', 'Да не, нормас. Ваще по теме же');
INSERT INTO `gnar_comments` VALUES(3, 1, 'boo', 'Незачем читать такое вообще');
INSERT INTO `gnar_comments` VALUES(4, 3, 'hom12', 'Просто блеск');
INSERT INTO `gnar_comments` VALUES(5, 2, 'mukac', 'как зарегистрироваться тут?');
INSERT INTO `gnar_comments` VALUES(15, 2, 'некто', 'что модно, то не безобразно');
INSERT INTO `gnar_comments` VALUES(18, 3, 'm.t', 'на самом деле - прекрасно!');
INSERT INTO `gnar_comments` VALUES(19, 5, 'eric', 'we can''t do it');

-- --------------------------------------------------------

--
-- Table structure for table `gnar_menu`
--

CREATE TABLE `gnar_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `gnar_menu`
--

INSERT INTO `gnar_menu` VALUES(1, 'Главная', '/');
INSERT INTO `gnar_menu` VALUES(2, 'Цветовой круг Иттена', '/?view=section&amp;id=1');
INSERT INTO `gnar_menu` VALUES(3, 'Баланс белого цвета', '/?view=section&amp;id=2');
INSERT INTO `gnar_menu` VALUES(4, 'Кроп-фактор', '/?view=section&amp;id=3');

-- --------------------------------------------------------

--
-- Table structure for table `gnar_polls`
--

CREATE TABLE `gnar_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gnar_polls`
--

INSERT INTO `gnar_polls` VALUES(1, 'Ваш любимый язык программирования');
INSERT INTO `gnar_polls` VALUES(2, 'Какую ОС предпочитаете?');
INSERT INTO `gnar_polls` VALUES(3, 'Музыка какого жанра отражает творчество Сальвадора Дали?');

-- --------------------------------------------------------

--
-- Table structure for table `gnar_poll_variants`
--

CREATE TABLE `gnar_poll_variants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `votes` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `gnar_poll_variants`
--

INSERT INTO `gnar_poll_variants` VALUES(1, 1, 'Java', 4);
INSERT INTO `gnar_poll_variants` VALUES(2, 1, 'PHP', 10);
INSERT INTO `gnar_poll_variants` VALUES(3, 1, 'C++', 4);
INSERT INTO `gnar_poll_variants` VALUES(4, 2, 'Windows', 4);
INSERT INTO `gnar_poll_variants` VALUES(5, 2, 'Linux', 2);
INSERT INTO `gnar_poll_variants` VALUES(6, 2, 'MacOS', 4);
INSERT INTO `gnar_poll_variants` VALUES(7, 2, 'Unix', 2);
INSERT INTO `gnar_poll_variants` VALUES(8, 3, 'Jazz', 1);
INSERT INTO `gnar_poll_variants` VALUES(9, 3, 'Metal', 2);
INSERT INTO `gnar_poll_variants` VALUES(10, 3, 'Rock', 3);
INSERT INTO `gnar_poll_variants` VALUES(11, 3, 'Electro', 1);
INSERT INTO `gnar_poll_variants` VALUES(12, 3, 'Indi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gnar_sections`
--

CREATE TABLE `gnar_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gnar_sections`
--

INSERT INTO `gnar_sections` VALUES(2, 'Баланс белого цвета', '<p>Один из параметров метода передачи цветного изображения, определяющий соответствие цветовой гаммы изображения объекта цветовой гамме объекта съёмки.</p>\n<p>Обычно употребляется как изменяемая характеристика фотографического процесса, фотоматериала, систем цветной печати и копирования, телевизионных систем и устройств воспроизведения графической информации (например, мониторов).</p>\n<p>Баланс белого, коррекция баланса белого, настройка белой точки или цветокоррекция — технология коррекции цветов изображения объекта до тех цветов, в которых человек видит объект в естественных условиях (объективный подход), или до тех цветов, которые представляются наиболее привлекательными (субъективный подход). Аналог биологического механизма — цветопостоянства.</p>', 'Баланс белого цвета', 'Баланс белого цвета', 1402908823);
INSERT INTO `gnar_sections` VALUES(3, 'Кроп-фактор', '<p>Кроп-фактор (от англ. Crop factor, crop — обрезать, factor — множитель) — условный коэффициент, отражающий изменение поля зрения объектива при его использовании с кадровым окном уменьшенного размера. Эта величина появилась одновременно с цифровой фотографией и чаще всего интерпретируется, как виртуальное увеличение фокусного расстояния оптики, рассчитанной на малоформатный кадр фотоплёнки при использовании фотоматрицы меньшего размера. Физический смысл кроп-фактора можно описать отношением диагонали стандартного кадра к диагонали используемого.</p>\n<p>K_f = диагональ35мм / диагональматрица (диагональ малоформатного кадра 24×36 мм ≈ 43,3мм)</p>\n<p>Таким образом, кроп-фактор «полнокадровой» матрицы, соответствующей размерам малоформатного кадра, равен единице. В практической фотографии кроп-фактор не может быть меньше единицы, поскольку использование кадра размеров, превышающих расчётные, приводит к виньетированию. Кроп-фактор служит только в качестве справочной величины и никак не влияет на действительное фокусное расстояние объективов, зависящее от их оптической конструкции.</p>', 'Кроп-фактор', 'Кроп-фактор', 1402917953);
INSERT INTO `gnar_sections` VALUES(1, 'Цветовой круг Иттена', '<center><img src="img/color_wheel_1.jpg" alt="color wheel" height="200" width="200"  vspace="7"></center></center>\n<p>Цветовой круг Иттена — способ представления непрерывности цветовых переходов, а также модели HSB.</p>\n<p> Сектора круга окрашены в различные цветовые тона, размещенные в порядке расположения цветов, причем пурпурный цвет связывает крайние (красный и фиолетовый) цвета.</p>\n<p>Это своеобразное мнемоническое правило, которое помогает ориентироваться в пространстве цветов, создавать нужный оттенок в любой цветовой модели.</p>\n', 'Цветовой круг Иттена', 'Цветовой круг Иттена', 1402908564);

-- --------------------------------------------------------

--
-- Table structure for table `gnar_users`
--

CREATE TABLE `gnar_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `verification_code` varchar(32) NOT NULL,
  `recovery_code` varchar(32) NOT NULL,
  `regdate` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `gnar_users`
--

INSERT INTO `gnar_users` VALUES(2, 'User1', '2f2077f50ca95eea8b10005de6d95c8e', 'cood@mail.co', '', '', 1409347856);
INSERT INTO `gnar_users` VALUES(3, 'sdsfs12', '1e29d602437efc1e164b94438cca2c00', 'dfdfg@ggf.ci', '', '', 1410096271);
INSERT INTO `gnar_users` VALUES(4, 'login12', 'fc8ef8e022db7a4c1d3463a6854248b1', 'login12@p.iu', '', '', 1410097650);
INSERT INTO `gnar_users` VALUES(5, 'mutac', '33048e15638e5153ee1e75815bc57002', 'mutac@mail.do', '', '', 1410439420);
INSERT INTO `gnar_users` VALUES(6, 'noodle', '86009ae94c0aa59051060ca33ab3425f', 'noodle@her.ua', '', '', 1410439624);
INSERT INTO `gnar_users` VALUES(7, 'lohor', '8fd55df49cc3899bf815d44719c92b88', ' lohor@good.ua', '', '', 1410440389);
INSERT INTO `gnar_users` VALUES(8, 'ernest', '683f3ca82c23fe07c5a36510b0b0b9b5', 'ernest.cynic@g.co', '', '', 1410541498);
INSERT INTO `gnar_users` VALUES(9, 'test', 'de2ed28e3c1dd462dcc6cd8a8e138dab', 'test@m.i', '', '', 1410727703);
INSERT INTO `gnar_users` VALUES(10, 'roo', '396e1d865128393c884a585ceb2928cb', 'ro@go.d', '', '', 1410815376);
INSERT INTO `gnar_users` VALUES(11, 'boo', 'de2ed28e3c1dd462dcc6cd8a8e138dab', 'boo@g.vc', '', '', 1410815536);
INSERT INTO `gnar_users` VALUES(12, 'too', 'de2ed28e3c1dd462dcc6cd8a8e138dab', 'too@HH.K', '', '', 1410818501);
INSERT INTO `gnar_users` VALUES(23, 'eric', 'cec88ca9a71fe537e4587d20a3cfd453', 'partoe-vaptrravs@rambler.ru', '', '', 1422126011);