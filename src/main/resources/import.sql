ALTER TABLE questions  CHARACTER SET "UTF8"  COLLATE "utf8_unicode_ci";
ALTER TABLE answers  CHARACTER SET "UTF8"  COLLATE "utf8_unicode_ci";
ALTER TABLE users  CHARACTER SET "UTF8"  COLLATE "utf8_unicode_ci";


insert into questions(id,name) values(1,' Która religia jest politeistyczna?');
insert into answers(id,question_id,position,name,correct) values(null,1,'a',' Muzułmanizm', false);
insert into answers(id,question_id,position,name,correct) values(null,1,'b',' Katolicyzm',false);
insert into answers(id,question_id,position,name,correct) values(null,1,'c',' Judaizm',false);
insert into answers(id,question_id,position,name,correct) values(null,1,'d',' Buddyzm ',true);

insert into questions(id,name) values(2,' Jaką dyscyplinę uprawia znany polski sportowiec Tomasz Gollob?');
insert into answers(id,question_id,position,name,correct) values(null,2,'a',' kolarstwo', false);
insert into answers(id,question_id,position,name,correct) values(null,2,'b',' żużel ',true);
insert into answers(id,question_id,position,name,correct) values(null,2,'c',' triathlon',false);
insert into answers(id,question_id,position,name,correct) values(null,2,'d',' rajdy samochodowe',false);

insert into questions(id,name) values(3,' Działalność techniczna polegająca na ujednolicaniu towarów i doprowadzaniu jego cech do wymmagań odpowiednich norm to:');
insert into answers(id,question_id,position,name,correct) values(null,3,'a',' standaryzacja ', true);
insert into answers(id,question_id,position,name,correct) values(null,3,'b',' normalizacja',false);
insert into answers(id,question_id,position,name,correct) values(null,3,'c',' typizacja',false);
insert into answers(id,question_id,position,name,correct) values(null,3,'d',' certyfikacja',false);

insert into questions(id,name) values(4,' Jeśli powiemy że suknia ma kolor ametysowy to znaczy że ma kolor zbliżony do:');
insert into answers(id,question_id,position,name,correct) values(null,4,'a',' błękitnego', false);
insert into answers(id,question_id,position,name,correct) values(null,4,'b',' zielonego',false);
insert into answers(id,question_id,position,name,correct) values(null,4,'c',' fioletowego ',true);
insert into answers(id,question_id,position,name,correct) values(null,4,'d',' beżowego',false);

insert into questions(id,name) values(5,' Grota to potoczne, lecz niefachowe określenie:');
insert into answers(id,question_id,position,name,correct) values(null,5,'a',' tunelu', false);
insert into answers(id,question_id,position,name,correct) values(null,5,'b',' przejścia podziemnego',false);
insert into answers(id,question_id,position,name,correct) values(null,5,'c',' korytarza górniczego',false);
insert into answers(id,question_id,position,name,correct) values(null,5,'d',' jaskini ',true);

insert into questions(id,name) values(6,' Delta w matematyce jest róznoznaczna z:');
insert into answers(id,question_id,position,name,correct) values(null,6,'a',' ilorazem', false);
insert into answers(id,question_id,position,name,correct) values(null,6,'b',' różnicą ',true);
insert into answers(id,question_id,position,name,correct) values(null,6,'c',' sumą',false);
insert into answers(id,question_id,position,name,correct) values(null,6,'d',' iloczynem',false);

insert into questions(id,name) values(7,' W latach 80 rekord Guinessa w ilości sprzedawanych komputerów pobił model');
insert into answers(id,question_id,position,name,correct) values(null,7,'a',' Apple II', false);
insert into answers(id,question_id,position,name,correct) values(null,7,'b',' Commodore C64 ',true);
insert into answers(id,question_id,position,name,correct) values(null,7,'c',' ZX Spectrum',false);
insert into answers(id,question_id,position,name,correct) values(null,7,'d',' Amiga 500',false);

insert into questions(id,name) values(8,' Ile występuje faz rozwoju demograficznego?');
insert into answers(id,question_id,position,name,correct) values(null,8,'a',' 5 faz ', true);
insert into answers(id,question_id,position,name,correct) values(null,8,'b',' 4 fazy',false);
insert into answers(id,question_id,position,name,correct) values(null,8,'c',' 3 fazy',false);
insert into answers(id,question_id,position,name,correct) values(null,8,'d',' 6 faz',false);

insert into questions(id,name) values(9,' Która część roweru posiada bieżnik?');
insert into answers(id,question_id,position,name,correct) values(null,9,'a',' szprycha', false);
insert into answers(id,question_id,position,name,correct) values(null,9,'b',' rama',false);
insert into answers(id,question_id,position,name,correct) values(null,9,'c',' opona ',true);
insert into answers(id,question_id,position,name,correct) values(null,9,'d',' hamulec',false);

insert into questions(id,name) values(10,' Dokończ przysłowie: "Jeszczesię taki nie urodził, co by"');
insert into answers(id,question_id,position,name,correct) values(null,10,'a',' każdemu dogodził ', true);
insert into answers(id,question_id,position,name,correct) values(null,10,'b',' w drogę nie wchodził',false);
insert into answers(id,question_id,position,name,correct) values(null,10,'c',' na wszystko zaradził',false);
insert into answers(id,question_id,position,name,correct) values(null,10,'d',' wszystkich pogodził',false);

insert into questions(id,name) values(11,' Ile w Polsce można jechać na drodze o dwóch pasach ruchu w jednym kierunku poza terenem zabudowanym?');
insert into answers(id,question_id,position,name,correct) values(null,11,'a',' 90 hm/h', false);
insert into answers(id,question_id,position,name,correct) values(null,11,'b',' 80 km/h',false);
insert into answers(id,question_id,position,name,correct) values(null,11,'c',' 100 km/h ',true);
insert into answers(id,question_id,position,name,correct) values(null,11,'d',' 110 km/h',false);

insert into questions(id,name) values(12,' Jakie to liczby: 2,3,5,7,11');
insert into answers(id,question_id,position,name,correct) values(null,12,'a',' parzyste', false);
insert into answers(id,question_id,position,name,correct) values(null,12,'b',' kolejne',false);
insert into answers(id,question_id,position,name,correct) values(null,12,'c',' złożone',false);
insert into answers(id,question_id,position,name,correct) values(null,12,'d',' pierwsze ',true);

insert into questions(id,name) values(13,' Kto wygrał pierwszą edycję popularnego programu rozrywkowego "Taniec z gwiazdam"?');
insert into answers(id,question_id,position,name,correct) values(null,13,'a',' Olivier Janiak ', true);
insert into answers(id,question_id,position,name,correct) values(null,13,'b',' Katarzyna Cichopek',false);
insert into answers(id,question_id,position,name,correct) values(null,13,'c',' Anna Guzik',false);
insert into answers(id,question_id,position,name,correct) values(null,13,'D',' Kinga Rusin',false);

insert into questions(id,name) values(14,' Synonimem Stwórcy jest wyrażenie "alfa i":');
insert into answers(id,question_id,position,name,correct) values(null,14,'a',' beta', false);
insert into answers(id,question_id,position,name,correct) values(null,14,'c',' delta',false);
insert into answers(id,question_id,position,name,correct) values(null,14,'c',' gamma',false);
insert into answers(id,question_id,position,name,correct) values(null,14,'d',' omega ',true);

insert into questions(id,name) values(15,' Co istnieje w herbie miasta Piła?');
insert into answers(id,question_id,position,name,correct) values(null,15,'a',' anioł', false);
insert into answers(id,question_id,position,name,correct) values(null,15,'b',' jeleń ',true);
insert into answers(id,question_id,position,name,correct) values(null,15,'c',' drzewo',false);
insert into answers(id,question_id,position,name,correct) values(null,15,'d',' piła',false);

insert into questions(id,name) values(16,' Na którym kontynencie znajduje sie Góra Kościuszki?');
insert into answers(id,question_id,position,name,correct) values(null,16,'a',' w Europie', false);
insert into answers(id,question_id,position,name,correct) values(null,16,'b',' w Australii ',true);
insert into answers(id,question_id,position,name,correct) values(null,16,'c',' w Afryce',false);
insert into answers(id,question_id,position,name,correct) values(null,16,'d',' w Azji',false);

insert into questions(id,name) values(17,' Kapuśniaczkiem określa się:');
insert into answers(id,question_id,position,name,correct) values(null,17,'a',' drobne opady deszczu ', true);
insert into answers(id,question_id,position,name,correct) values(null,17,'b',' niesfornego urwipołcia',false);
insert into answers(id,question_id,position,name,correct) values(null,17,'c',' obżarciucha warzyw',false);
insert into answers(id,question_id,position,name,correct) values(null,17,'d',' smaczną potrawę z kapusty',false);

insert into questions(id,name) values(18,' Na jaki kolor zabarwi się uniewersalny papierek wskaźnikowy włożony do roztworu mocnej zasady?');
insert into answers(id,question_id,position,name,correct) values(null,18,'a',' na granatowy ', true);
insert into answers(id,question_id,position,name,correct) values(null,18,'b',' na czerwony',false);
insert into answers(id,question_id,position,name,correct) values(null,18,'c',' na zielony',false);
insert into answers(id,question_id,position,name,correct) values(null,18,'d',' na pomarańczowy',false);

insert into questions(id,name) values(19,' Kto odkrył Amerykę:');
insert into answers(id,question_id,position,name,correct) values(null,19,'a',' Krzysztof Kolumb ', true);
insert into answers(id,question_id,position,name,correct) values(null,19,'b',' Ferdynand Magellan',false);
insert into answers(id,question_id,position,name,correct) values(null,19,'c',' Jan Długosz',false);
insert into answers(id,question_id,position,name,correct) values(null,19,'d',' Vinventy van Gogh',false);

insert into questions(id,name) values(20,' Umowa międzynarodowa obowiązująca w UE od 1 grudnia 2009 została podpisana w:');
insert into answers(id,question_id,position,name,correct) values(null,20,'a',' Hadze', false);
insert into answers(id,question_id,position,name,correct) values(null,20,'b',' Kopenhadze',false);
insert into answers(id,question_id,position,name,correct) values(null,20,'c',' Lizbonie ',true);
insert into answers(id,question_id,position,name,correct) values(null,20,'d',' Atenach',false);

insert into questions(id,name) values(21,' Które ze słów nie jest synonimem wyrażenia "gumowe ucho"?');
insert into answers(id,question_id,position,name,correct) values(null,21,'a',' dyskretny ', true);
insert into answers(id,question_id,position,name,correct) values(null,21,'b',' konfident',false);
insert into answers(id,question_id,position,name,correct) values(null,21,'c',' denuncjant',false);
insert into answers(id,question_id,position,name,correct) values(null,21,'d',' figurant',false);

insert into questions(id,name) values(22,' Czym jest migotka?');
insert into answers(id,question_id,position,name,correct) values(null,22,'a',' odświeżeniem diody LED', false);
insert into answers(id,question_id,position,name,correct) values(null,22,'b',' natężeniem żarówki',false);
insert into answers(id,question_id,position,name,correct) values(null,22,'c',' trzecią powieką ',true);
insert into answers(id,question_id,position,name,correct) values(null,22,'d',' elementem budowy aparatu',false);

insert into questions(id,name) values(23,' Constans oznacza wartość:');
insert into answers(id,question_id,position,name,correct) values(null,23,'a',' sinusoidy', false);
insert into answers(id,question_id,position,name,correct) values(null,23,'b',' stale malejącą',false);
insert into answers(id,question_id,position,name,correct) values(null,23,'c',' stale rosnącą',false);
insert into answers(id,question_id,position,name,correct) values(null,23,'d',' stałą ',true);

insert into questions(id,name) values(24,' Jaką nazwę nosił silny wiatr przechodzący przez Polskę w dniach 1 i 2 marca 2008?');
insert into answers(id,question_id,position,name,correct) values(null,24,'a',' Gloria', false);
insert into answers(id,question_id,position,name,correct) values(null,24,'b',' Konga',false);
insert into answers(id,question_id,position,name,correct) values(null,24,'c',' Emma ',true);
insert into answers(id,question_id,position,name,correct) values(null,24,'d',' Puma',false);

insert into questions(id,name) values(25,' Czyją siedzibą jest Belweder?');
insert into answers(id,question_id,position,name,correct) values(null,25,'a',' marszałka sejmu', false);
insert into answers(id,question_id,position,name,correct) values(null,25,'b',' prezydenta ',true);
insert into answers(id,question_id,position,name,correct) values(null,25,'c',' premiera',false);
insert into answers(id,question_id,position,name,correct) values(null,25,'d',' papieża',false);

insert into questions(id,name) values(26,' Symbolem portalu nasza-klasapl jest:');
insert into answers(id,question_id,position,name,correct) values(null,26,'a',' Pan Kurczak', false);
insert into answers(id,question_id,position,name,correct) values(null,26,'b',' Kitka Anitka',false);
insert into answers(id,question_id,position,name,correct) values(null,26,'c',' Panda Wanda',false);
insert into answers(id,question_id,position,name,correct) values(null,26,'d',' Pan Gąbka ',true);

insert into questions(id,name) values(27,' Kto grał rolę tytułową w serialu "Janosik"?');
insert into answers(id,question_id,position,name,correct) values(null,27,'a',' Marek Perepeczko ', true);
insert into answers(id,question_id,position,name,correct) values(null,27,'b',' Witold Pyrkosz',false);
insert into answers(id,question_id,position,name,correct) values(null,27,'c',' Marian Kociniak',false);
insert into answers(id,question_id,position,name,correct) values(null,27,'d',' Bogusz Bilewski',false);

insert into questions(id,name) values(28,' Czym jest Słońce?');
insert into answers(id,question_id,position,name,correct) values(null,28,'a',' statelitą', false);
insert into answers(id,question_id,position,name,correct) values(null,28,'b',' gwiazdą ',true);
insert into answers(id,question_id,position,name,correct) values(null,28,'c',' kometą',false);
insert into answers(id,question_id,position,name,correct) values(null,28,'d',' planetą',false);

insert into questions(id,name) values(29,' W godle polskim orzeł znajduje się na tle:');
insert into answers(id,question_id,position,name,correct) values(null,29,'a',' czarnym', false);
insert into answers(id,question_id,position,name,correct) values(null,29,'b',' zielonym',false);
insert into answers(id,question_id,position,name,correct) values(null,29,'c',' czerwonym ',true);
insert into answers(id,question_id,position,name,correct) values(null,29,'d',' fioletowym',false);

insert into questions(id,name) values(30,' Jak nazywa sie najgłębszy rów oceaniczny na świecie?');
insert into answers(id,question_id,position,name,correct) values(null,30,'a',' Kermadec', false);
insert into answers(id,question_id,position,name,correct) values(null,30,'b',' Rów Tonga',false);
insert into answers(id,question_id,position,name,correct) values(null,30,'c',' Riukiu',false);
insert into answers(id,question_id,position,name,correct) values(null,30,'d',' Rów Mariański ',true);

insert into questions(id,name) values(31,' Który z tych wyrazów znajdzie swe miejsce w słowniku ortograficznym?');
insert into answers(id,question_id,position,name,correct) values(null,31,'a',' zachachmencić', false);
insert into answers(id,question_id,position,name,correct) values(null,31,'b',' zachahmęcić',false);
insert into answers(id,question_id,position,name,correct) values(null,31,'c',' zachachmęcić ',true);
insert into answers(id,question_id,position,name,correct) values(null,31,'d',' zahachmęcić',false);

insert into questions(id,name) values(32,' Widzowie serialu Dynastia pasjonowali się dziejami rodziny:');
insert into answers(id,question_id,position,name,correct) values(null,32,'a',' Carringtonów ', true);
insert into answers(id,question_id,position,name,correct) values(null,32,'b',' Forresterów',false);
insert into answers(id,question_id,position,name,correct) values(null,32,'c',' Bundych',false);
insert into answers(id,question_id,position,name,correct) values(null,32,'d',' Soprano',false);

insert into questions(id,name) values(33,' Największy szczyt Sudetów to:');
insert into answers(id,question_id,position,name,correct) values(null,33,'a',' Łysocina', false);
insert into answers(id,question_id,position,name,correct) values(null,33,'b',' Wielki Szyszak',false);
insert into answers(id,question_id,position,name,correct) values(null,33,'c',' Przedział',false);
insert into answers(id,question_id,position,name,correct) values(null,33,'d',' Śnieżka ',true);

insert into questions(id,name) values(34,' Co krył koń trojański?');
insert into answers(id,question_id,position,name,correct) values(null,34,'a',' wojowników trojańskich', false);
insert into answers(id,question_id,position,name,correct) values(null,34,'b',' wiele nieszczęść',false);
insert into answers(id,question_id,position,name,correct) values(null,34,'c',' ładunek wybuchowy',false);
insert into answers(id,question_id,position,name,correct) values(null,34,'d',' wojoników greckich ',true);

insert into questions(id,name) values(35,' Odpowiedzialność konstytucyjna jest ponoszona przed:');
insert into answers(id,question_id,position,name,correct) values(null,35,'a',' Sądem Najwyższym', false);
insert into answers(id,question_id,position,name,correct) values(null,35,'b',' Trybunałem Stanu ',true);
insert into answers(id,question_id,position,name,correct) values(null,35,'c',' Trybunałem Konstytucyjnym',false);
insert into answers(id,question_id,position,name,correct) values(null,35,'d',' Sądem Krajowym',false);

insert into questions(id,name) values(36,' Prohibicja to zakaz spożywania:');
insert into answers(id,question_id,position,name,correct) values(null,36,'a',' alkoholu', true);
insert into answers(id,question_id,position,name,correct) values(null,36,'b',' warzyw',false);
insert into answers(id,question_id,position,name,correct) values(null,36,'c',' wieprzowiny',false);
insert into answers(id,question_id,position,name,correct) values(null,36,'d',' pokarmów mięsnych',false);

insert into questions(id,name) values(37,' W którym mieście zmarł Karol Wojtyła Senior?');
insert into answers(id,question_id,position,name,correct) values(null,37,'a',' w Lipniku', false);
insert into answers(id,question_id,position,name,correct) values(null,37,'b',' w Warszawie',false);
insert into answers(id,question_id,position,name,correct) values(null,37,'c',' w Krakowie ',true);
insert into answers(id,question_id,position,name,correct) values(null,37,'d',' w Wadowicach',false);

insert into questions(id,name) values(38,' Z jakim zwierzęciem utożsamiamy przejście dla pieszych?');
insert into answers(id,question_id,position,name,correct) values(null,38,'a',' z zebrą ', true);
insert into answers(id,question_id,position,name,correct) values(null,38,'b',' z psem',false);
insert into answers(id,question_id,position,name,correct) values(null,38,'c',' z żyrafą',false);
insert into answers(id,question_id,position,name,correct) values(null,38,'d',' z lampartem',false);

insert into questions(id,name) values(39,' W układzie SI podstawową jednostką miary długości jest:');
insert into answers(id,question_id,position,name,correct) values(null,39,'a',' centymetr', false);
insert into answers(id,question_id,position,name,correct) values(null,39,'b',' kilometr',false);
insert into answers(id,question_id,position,name,correct) values(null,39,'c',' metr ',true);
insert into answers(id,question_id,position,name,correct) values(null,39,'d',' milimetr',false);

insert into questions(id,name) values(40,' Przysłowiowa ciekawość:');
insert into answers(id,question_id,position,name,correct) values(null,40,'a',' prowadzi do nikąd', false);
insert into answers(id,question_id,position,name,correct) values(null,40,'b',' zniszczyła nadzieję',false);
insert into answers(id,question_id,position,name,correct) values(null,40,'c',' zbiła kota ',true);
insert into answers(id,question_id,position,name,correct) values(null,40,'d',' rujnuje przyjeźń',false);

insert into questions(id,name) values(41,' Za pomoca czego otrzymuje się obraz w kserokipiarce bądź też drukarce laserowej?');
insert into answers(id,question_id,position,name,correct) values(null,41,'a',' tonera ', true);
insert into answers(id,question_id,position,name,correct) values(null,41,'b',' lasera',false);
insert into answers(id,question_id,position,name,correct) values(null,41,'c',' atrametnu',false);
insert into answers(id,question_id,position,name,correct) values(null,41,'d',' promiennika czerwieni',false);

insert into questions(id,name) values(42,' W którym roku odbyła się premiera filmu animowanego pt Król Lew?');
insert into answers(id,question_id,position,name,correct) values(null,42,'a',' w 1993 ', false);
insert into answers(id,question_id,position,name,correct) values(null,42,'b',' w 1994 ',true);
insert into answers(id,question_id,position,name,correct) values(null,42,'c',' w 1995',false);
insert into answers(id,question_id,position,name,correct) values(null,42,'d',' w 1996',false);

insert into questions(id,name) values(43,' Udomowioną formą zająca jest:');
insert into answers(id,question_id,position,name,correct) values(null,43,'a',' zając wielkouchy', false);
insert into answers(id,question_id,position,name,correct) values(null,43,'b',' zając bielak',false);
insert into answers(id,question_id,position,name,correct) values(null,43,'c',' zając szarak',false);
insert into answers(id,question_id,position,name,correct) values(null,43,'d',' królik europejski ',true);

insert into questions(id,name) values(44,' Stolicą Ukrainy jest:');
insert into answers(id,question_id,position,name,correct) values(null,44,'a',' Praga', false);
insert into answers(id,question_id,position,name,correct) values(null,44,'b',' Kijów ',true);
insert into answers(id,question_id,position,name,correct) values(null,44,'c',' Kopenhaga',false);
insert into answers(id,question_id,position,name,correct) values(null,44,'d',' Bratysława',false);

insert into questions(id,name) values(45,' Kto napisał utwór Świętoszek');
insert into answers(id,question_id,position,name,correct) values(null,45,'a',' Horacy', false);
insert into answers(id,question_id,position,name,correct) values(null,45,'b',' Homer',false);
insert into answers(id,question_id,position,name,correct) values(null,45,'c',' Molier ',true);
insert into answers(id,question_id,position,name,correct) values(null,45,'d',' Albert Camus',false);

insert into questions(id,name) values(46,' Kto w latach 1992-1995 prowadził teleturniej Koło Fortuny:');
insert into answers(id,question_id,position,name,correct) values(null,46,'a',' Krzysztof Tyniec', false);
insert into answers(id,question_id,position,name,correct) values(null,46,'b',' Wojciech Pijanowski ',true);
insert into answers(id,question_id,position,name,correct) values(null,46,'c',' Andrzej Kopiczyński',false);
insert into answers(id,question_id,position,name,correct) values(null,46,'d',' Paweł Wawrzecki',false);

insert into questions(id,name) values(47,' Co w wolnym tłumaczeniu oznacza słowo "fraszka"?');
insert into answers(id,question_id,position,name,correct) values(null,47,'a',' gałązka', false);
insert into answers(id,question_id,position,name,correct) values(null,47,'b',' wierszyk',true);
insert into answers(id,question_id,position,name,correct) values(null,47,'c',' krótka myśl',false);
insert into answers(id,question_id,position,name,correct) values(null,47,'d',' ptaszek',false);

insert into questions(id,name) values(48,' W herbie Watykanu przecinają się dwa klucze Jakiego są one koloru?');
insert into answers(id,question_id,position,name,correct) values(null,48,'a',' obydwa złotego', false);
insert into answers(id,question_id,position,name,correct) values(null,48,'b',' złotego i srebrnego ',true);
insert into answers(id,question_id,position,name,correct) values(null,48,'c',' srebrnego i brązowego',false);
insert into answers(id,question_id,position,name,correct) values(null,48,'d',' złotego i brązowego',false);

insert into questions(id,name) values(49,' Bumelant:');
insert into answers(id,question_id,position,name,correct) values(null,49,'a',' to współczesny sędzia', false);
insert into answers(id,question_id,position,name,correct) values(null,49,'b',' regularnie unika pracy ',true);
insert into answers(id,question_id,position,name,correct) values(null,49,'c',' wyszukuje bubli prawnych',false);
insert into answers(id,question_id,position,name,correct) values(null,49,'d',' szpieguje firmy handlowe',false);

insert into questions(id,name) values(50,' Które państwo europejskie posługuje się dewizą "Bóg i moje prawo"?');
insert into answers(id,question_id,position,name,correct) values(null,50,'a',' Włochy', false);
insert into answers(id,question_id,position,name,correct) values(null,50,'b',' Niemcy',false);
insert into answers(id,question_id,position,name,correct) values(null,50,'c',' Wielka Brytania ',true);
insert into answers(id,question_id,position,name,correct) values(null,50,'d',' Francja',false);

insert into questions(id,name) values(51,' Jakimi zwierzętami zajmuje się w Indiach kornak?');
insert into answers(id,question_id,position,name,correct) values(null,51,'a',' sloniami', true);
insert into answers(id,question_id,position,name,correct) values(null,51,'b',' świniami',false);
insert into answers(id,question_id,position,name,correct) values(null,51,'c',' koniami',false);
insert into answers(id,question_id,position,name,correct) values(null,51,'d',' krowami',false);

insert into questions(id,name) values(52,' Wiecznie żywe idee to idee:');
insert into answers(id,question_id,position,name,correct) values(null,52,'a',' stalina', false);
insert into answers(id,question_id,position,name,correct) values(null,52,'b',' Lenina ',true);
insert into answers(id,question_id,position,name,correct) values(null,52,'c',' Marksa ',false);
insert into answers(id,question_id,position,name,correct) values(null,52,'d',' Engelsa',false);

insert into questions(id,name) values(53,' Jakie pojęcie - w starożytnej kulturze - określa komentarz, dopowiedzenie lub charakterystykę, wypowiedziane przez chór?');
insert into answers(id,question_id,position,name,correct) values(null,53,'a',' eksodus', false);
insert into answers(id,question_id,position,name,correct) values(null,53,'b',' parados',false);
insert into answers(id,question_id,position,name,correct) values(null,53,'c',' stasimon ',true);
insert into answers(id,question_id,position,name,correct) values(null,53,'d',' epeisodia',false);

insert into questions(id,name) values(54,' Który z wymienionych polityków wypowiedział te słowa:"Naród który zabija swoje dzieci jest narodem bez przyszłości"?');
insert into answers(id,question_id,position,name,correct) values(null,54,'a',' Jarosław Kaczyński', false);
insert into answers(id,question_id,position,name,correct) values(null,54,'b',' Krzysztof Putra',false);
insert into answers(id,question_id,position,name,correct) values(null,54,'c',' Roman Giertych ',true);
insert into answers(id,question_id,position,name,correct) values(null,54,'d',' Andrzej Lepper',false);

insert into questions(id,name) values(55,' Która z ofiar kwietniowej katastrofy Tu-154 w Smoleństku sprawowała mandat senatorski?');
insert into answers(id,question_id,position,name,correct) values(null,55,'a',' Leszek Duptała', false);
insert into answers(id,question_id,position,name,correct) values(null,55,'b',' Stanisław Zając ',true);
insert into answers(id,question_id,position,name,correct) values(null,55,'c',' Edward Wojtas',false);
insert into answers(id,question_id,position,name,correct) values(null,55,'d',' Arkadiusz Rybicki',false);

insert into questions(id,name) values(56,' Z ilu znaków składa się numer identyfikacyjny VIN?');
insert into answers(id,question_id,position,name,correct) values(null,56,'a',' z 13', false);
insert into answers(id,question_id,position,name,correct) values(null,56,'b',' z 19 ',false);
insert into answers(id,question_id,position,name,correct) values(null,56,'c',' z 17 ',true);
insert into answers(id,question_id,position,name,correct) values(null,56,'d',' z 15',false);

insert into questions(id,name) values(57,' Które z wymienionuch znaczeń nie odnosi się do urodzin?');
insert into answers(id,question_id,position,name,correct) values(null,57,'a',' prezent', false);
insert into answers(id,question_id,position,name,correct) values(null,57,'b',' rocznica ',false);
insert into answers(id,question_id,position,name,correct) values(null,57,'c',' święto ku czci Geniusza ',true);
insert into answers(id,question_id,position,name,correct) values(null,57,'d',' album grupy Dżem',false);

insert into questions(id,name) values(58,' Dokument ogłoszony przez Marcina Lutra w Wittenberdze 31 października 1517 roku to zbiór ilu tez?');
insert into answers(id,question_id,position,name,correct) values(null,58,'a',' 90ciu', false);
insert into answers(id,question_id,position,name,correct) values(null,58,'b',' 85ciu',false);
insert into answers(id,question_id,position,name,correct) values(null,58,'c',' 95ciu ',true);
insert into answers(id,question_id,position,name,correct) values(null,58,'d',' 100tu',false);

insert into questions(id,name) values(59,' Które zdanie współrzędnie złożone nie istnieje?');
insert into answers(id,question_id,position,name,correct) values(null,59,'a',' przeciwstawne', false);
insert into answers(id,question_id,position,name,correct) values(null,59,'b',' homonimiczne ',true);
insert into answers(id,question_id,position,name,correct) values(null,59,'c',' wynikowe',false);
insert into answers(id,question_id,position,name,correct) values(null,59,'d',' synonimiczne',false);

insert into questions(id,name) values(60,' Największym przyjacielem Czesia z serialu Włatcy Móch nie jest:');
insert into answers(id,question_id,position,name,correct) values(null,60,'a',' Wacek', false);
insert into answers(id,question_id,position,name,correct) values(null,60,'b',' Marcel ',true);
insert into answers(id,question_id,position,name,correct) values(null,60,'c',' Wujek Alfred',false);
insert into answers(id,question_id,position,name,correct) values(null,60,'d',' Miś Przekliniak',false);




