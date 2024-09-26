-- create table state(
-- stateid int PRIMARY key ,
-- statename varchar(10) unique not NULL
-- );
-- create table place(
-- placeid int PRIMARY key ,
-- placename varchar(10) not NULL,
-- placedesc varchar(10) not NULL,
-- placeimg varchar(10) not NULL,
-- placeloc varchar(10)  not NULL,
-- hours int  not NULL,
-- budget int  not NULL
-- );

-- create table city(
-- cityid int PRIMARY key ,
-- cityname varchar(10) unique not NULL
-- );
-- create table state_city(
-- cityid int ,
-- stateid int,
-- foreign key (cityid) references city (cityid) on delete CASCADE,
-- foreign key (stateid) references state (stateid) on delete CASCADE
-- );
-- create table city_place(
-- cityid int ,
-- placeid int,
-- primary key(cityid,placeid),
-- foreign key (cityid) references city (cityid) on delete CASCADE,
-- foreign key (placeid) references place (placeid) on delete CASCADE
-- );

------------------------------------------create table ends------------------------------------------------------------------------
-- insert into state values(1,'Karnataka');
-- insert into place values(1,'Gokak falls','The longest river in Goa, the Mandovi, originates in Jamboti Hills, which is a picturesque and tranquil location to explore.','public/Gokak.jpg','https://www.google.com/maps/place/Gokak+Water+Falls/@16.1924051,74.7768622,16z/data=!3m1!4b1!4m6!3m5!1s0x3bc0ba9f1259fdb9:0x98e520c744fea600!8m2!3d16.1925858!4d74.7770475!16zL20vMDlsX3hk?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',3,99);
 --insert into place values(2,'Jamboti Hills','The longest river in Goa, the Mandovi, originates in Jamboti Hills, which is a picturesque and tranquil location to explore.','https://www.google.com/imgres?q=jamboti%20hills&imgurl=https%3A%2F%2Fmonomousumi.com%2Fwp-content%2Fuploads%2Fjamboti.jpg&imgrefurl=https%3A%2F%2Fmonomousumi.com%2Fjamboti%2F&docid=4jzBnTt5esJjGM&tbnid=FqYjxADJ28bvbM&vet=12ahUKEwjarKixsbOIAxVs7zgGHa9BKFQQM3oECFQQAA..i&w=1600&h=1066&hcb=2&ved=2ahUKEwjarKixsbOIAxVs7zgGHa9BKFQQM3oECFQQAA','15.682620546738592, 74.34520858329472',3,99);
-- insert into state_city values(1,1);
-- insert into state_city values(2,1);
-- insert into state_city values(3,1);
-- insert into state_city values(4,1);
-- insert into state_city values(5,1);
-- insert into state_city values(6,1);
-- insert into state_city values(7,1);
-- insert into state_city values(8,1);
-- insert into state_city values(9,1);
-- insert into state_city values(10,1);
--drop table city_place;
-- insert into city values(1,'Belagavi');
-- insert into city_place values(4,41);
-- insert into city_place values(4,40);
-- insert into city_place values(4,41);
-- insert into city_place values(4,42);
-- insert into city_place values(4,43);
-- insert into city_place values(4,44);
-- insert into city_place values(4,45);
-- insert into city_place values(4,46);
-- insert into city_place values(4,47);
-- insert into city_place values(4,48);
-- insert into city_place values(4,49);
-- insert into city_place values(4,50);
-- insert into city_place values(3,36);
-- insert into city_place values(3,37);
-- insert into city_place values(3,28);
-- insert into city_place values(1,15);
-- insert into city_place values(5,1);
-- insert into city_place values(5,2);
-- insert into city_place values(5,3);
-- insert into city_place values(5,4);
-- insert into city_place values(5,5);
-- insert into city_place values(5,6);
-- insert into city_place values(5,7);
-- insert into city_place values(5,8);
-- insert into city_place values(5,9);
-- insert into city_place values(5,10);
-- insert into city_place values(5,11);
-- insert into city_place values(5,12);

-- alter table city
-- add citydesc varchar(10);
-- update place
-- set placeimg='jamboti.jpg'
-- where placeid=2;
--  INSERT INTO place VALUES (1, 'Belgaum Fort', 'The Ratt Dynasty emperors are thought to have  constructed Belgaum Fort in 1204 AD. This is one of the best places to visit in Belgaum and is known as Belgavi Fort.Timings: 8 AM- 6:30 PM','BelgaumFort.jpg','https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf66c735eb779f:0x21627145ed9b9a0',25,2);
-- update place
-- set hours=2 and budget=25 
-- where placeid=1;
-- insert into place values(2,'Gokak falls','This is one of the most beautiful places to visit in Belgaum, and it’s situated beside the Ghataprabha River. ','Gokak.jpg','https://www.google.com/maps/place/Gokak+Water+Falls/@16.1924051,74.7768622,16z/data=!3m1!4b1!4m6!3m5!1s0x3bc0ba9f1259fdb9:0x98e520c744fea600!8m2!3d16.1925858!4d74.7770475!16zL20vMDlsX3hk?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',2,300);
-- insert into place values(3,'Jamboti Hills','The longest river in Goa, the Mandovi, originates in Jamboti Hills, which is a picturesque and tranquil location to explore.','jamboti.jpg','https://www.google.com/maps/place/Jamboti,+Karnataka+591345/@15.6896392,74.37109,16z/data=!3m1!4b1!4m6!3m5!1s0x3bbf718f6bbe8047:0x5846f69858dd3b4a!8m2!3d15.6910084!4d74.3660784!16s%2Fm%2F0261gwy?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',3,0);
-- insert into place values(4,'Kapileshwar Temple','The longest river in Goa, the Mandovi, originates in Jamboti Hills, which is a picturesque and tranquil location to explore.','kapil.jpg','https://www.google.com/maps/place/Belagavi+Shri+Kapileswara+Swamy+Temple/@15.8519074,74.5159728,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbf66bd79e75e45:0x196a5ef8764b754e!8m2!3d15.8519074!4d74.5159728!16s%2Fg%2F1tglfs00?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',2,0);
--  INSERT INTO place VALUES (5, 'Military Mahadeva Temple', 'One of the oldest and most well-known temples in Belgaum, Karnataka, is the Military Mahadeva Temple. This temple, which is devoted to Lord Shiva, is owned and run by the Indian Army’s Southern Command, hence the name.6 AM – 8 PM','mmt.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf669eb3db0cc3:0xfcdcb589688a591c', 2, 0);
--  INSERT INTO place VALUES (6, 'Kamal Basti', 'Kamal Basti is a Jain temple located in Belgaum governed by Shree Shree 1008 Neminath.6:00 AM to 12:00 PM, 4 PM to 8:00 PM', 'kamala.jpg','https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf66b8b6303af7:0x874f56d0e6ae787d', 1, 0);
--  INSERT INTO place VALUES (7, 'Hidkal Dam', 'Hidkal Dam is one of the best places to visit in Belgaum for couples if you’re looking for a tranquil setting to explore with your significant other.', 'Hidkal_Dam.jpg','https://www.google.com/maps/place/Hidkal+Dam,+Karnataka+591107/@16.1462048,74.642605,17z/data=!3m1!4b1!4m6!3m5!1s0x3bc0a3293b8b87cb:0xa6517c80ec7001c6!8m2!3d16.1462048!4d74.642605!16s%2Fg%2F11c1w_s3l4?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1, 0);
--  INSERT INTO place VALUES (8, 'Fort Lake', 'One of Belgaum City’s picnic areas is Fort Lake or Kote Kere.8 AM – 6:30 PM', 'lake.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf67f791fa179b:0x7d403040eb50bbbf', 2, 25);
--  INSERT INTO place VALUES (9, 'Godchinamalki Falls', 'Godchinamalaki Falls, a stunning waterfall fed by the river Markandeya, is situated in the Belgaum district of Karnataka 15 kilometres from Gokak.',  'Godachin.jpg','https://www.google.com/maps/place/Godachinamalki+Waterfalls/@16.1237569,74.7452239,17z/data=!3m1!4b1!4m6!3m5!1s0x3bc0a50894175d77:0xa7e9eb20cdbdc1d!8m2!3d16.1237569!4d74.7452239!16zL20vMDltMGN0?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1,0);
--  INSERT INTO place VALUES (10, 'Yellur Fort', 'Yellur Fort, also known as Rajhansgad Yellur Fort, is an old fort perched on a hill. It has been ruled by a number of kingdoms, including the Marathas, Peshwas, Hoysalas, and Bahamanis, among others 8 AM- 6:30 PM', 'yellur.png', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf68ebb7724609:0x33963123b85bfede', 3, 25);
--  INSERT INTO place VALUES (11, 'Vajrapoha Falls', 'Vajrapoha Falls is a stunning waterfall of shimmering water that cascades over a rocky cliff, producing a lovely view.', 'vajrapoha.jpg','https://www.google.com/maps/place/Vajrapoha+(Mahadaayihole)+Falls./@15.6221814,74.3362925,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbf736da6570419:0xe08a1e17417c78d8!8m2!3d15.6221814!4d74.3362925!16s%2Fm%2F05my07j?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);
--  INSERT INTO place VALUES (12, 'Rakaskop Dam', 'A 16 km drive from the city centre, across the Markandeya River, is a dam famed for its lush green surroundings that supply water to the entire city of Belgaum. It is called the Rakaskop Dam.', 'rakskopa.jpg', 'https://www.google.com/maps/place/Rakaskop,+Karnataka+591108/@15.8205957,74.3727314,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbf7b1d228f0785:0xb3e80c9b0092b7b6!8m2!3d15.8204804!4d74.3726762!16s%2Fm%2F0ddgwg_?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);
--  INSERT INTO place VALUES (13, 'Iskcon Temple', 'Holds a special significance for the devotees of the International Society for Krishna Consciousness. We are a branch of the International Society for Krishna Consciousness (ISKCON).', 'iskon.jpg', 'https://www.google.com/maps/place/ISKCON+BELAGAVI/@15.84009,74.5015395,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbf668358596f97:0x25702e28c98b2232!8m2!3d15.84009!4d74.5041144!16s%2Fg%2F11rsvb4d0j?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1, 30);
--  INSERT INTO place VALUES (1, 'Belgaum Fort', 'The Ratt Dynasty emperors are thought to have  constructed Belgaum Fort in 1204 AD. This is one of the best places to visit in Belgaum and is known as Belgavi Fort.Timings: 8 AM- 6:30 PM','BelgaumFort.jpg','https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbf66c735eb779f:0x21627145ed9b9a0',25,2);


-- insert into city values(3,'Mysore','Mysore, famed for its regal heritage and the stunning Mysore Palace, is a city steeped in history and renowned for its rich cultural traditions and beautiful gardens.');
-- insert into city values(4,'Udupi','Udupi, known for its revered temples and delicious cuisine, is a coastal gem in Karnataka');
-- insert into city values(5,'Uttar Kannada','Uttar Kannada, with its lush landscapes and scenic beaches, offers a tranquil retreat amid natures splendor.');
-- insert into city values(5,'Uttar Kannada','Uttar Kannada, with its lush landscapes and scenic beaches, offers a tranquil retreat amid natures splendor.');

-- insert into city values(6,'Bagalkot','Bagalkot is renowned for its historical sites, including the ancient temples of Badami and Aihole.');
-- insert into city values(7,'Chikkamangaluru','Chikkamagaluru, nestled in the Western Ghats, is celebrated for its lush coffee plantations and scenic landscapes.');

-- insert into city values(8,'Bijapur','Bijapur is famous for its architectural marvels, including the iconic Gol Gumbaz and Bijapur Fort.');

-- insert into city values(9,'Hassan','Hassan is known for its proximity to the historic Hoysala temples in Belur and Halebidu.');
-- insert into city values(10,'Dharwad','Dharwad, a cultural hub, is celebrated for its rich history and as a prominent center for Kannada literature and music.');

-- insert into city values(11,'Uttar Kannada','Uttar Kannada, with its lush landscapes and scenic beaches, offers a tranquil retreat amid natures splendor.');

---------------------------------------Banglore-----------------------------------

-- insert into place values(14,'Lalbagh Botanical Garden','Botanical garden with an aquarium & glasshouse designed to mimic Londons former Crystal Palace.','lalbag.jpg','https://maps.app.goo.gl/WE3JM6AjsnFscMRD6',2,50);
-- insert into place values(15,'Cubbon Park','Established in 1870, this vibrant city park has walking paths, landscaped gardens & play areas.','cubbon.jpg','https://maps.app.goo.gl/gK5SjmKMzLgTzP5TA',2,0);  
-- insert into place values(16,'Bengluru Palace','Modern royal palace modeled on Windsor Castle offering tours, outdoor concerts & an amusement park.','bgrplc.jpg','https://maps.app.goo.gl/MXZZuH9dRRua3QcT9',2,100); 
-- insert into place values(17,'Iskcon Temple','Expansive, modern Hare Krishna temple campus, including shrines, food stalls & souvenir shops.','iskonbgr.jpg','https://maps.app.goo.gl/VGL9aogoqkgwX4yq8',1,0); 
-- insert into place values(18,'Visvesvaraya Museum','Family-friendly technology & science museum with exhibits on engines, space, biotechnology & more.','vishveshwarayya.jpg','https://maps.app.goo.gl/GhB2Mue3qZoAmN59A',2,100); 
-- insert into place values(19,'Vidhana Soudha','Massive, architecturally notable building housing the state legislative chambers.','vidhana.jpg','https://maps.app.goo.gl/SNMir1Lu7BGaGvrUA',1,0); 
-- insert into place values(20,'Bannerghatta Biological Park',' Bannerghatta Biological Park is a sprawling wildlife reserve offering a diverse range of experiences.','banneraghatta.jpg','https://maps.app.goo.gl/PBhLb3yibfnAPWXD9',3,600);
-- insert into place values(21,'Jawaharlal Nehru Planetarium','Planetarium with shows in Kannada & English, plus a science center for educational activities.','JN.jpg','https://maps.app.goo.gl/GkVB8JJT1VE3wri99',2,150);  
-- insert into place values(22,'UB city','Three-level shopping center with luxury, international retailers, plus sophisticated restaurants.','UBcity.jpg','https://maps.app.goo.gl/s8WcpNgTXPG7AVsZ8',2,700); 
-- insert into place values(23,'National Gallery of Modern Arts','Museum housing paintings by modern & contemporary Indian artists, plus a cafe & an auditorium.','nationalgallery.jpg','https://maps.app.goo.gl/AA9L8dJysbJUnSAq9',3,500); 
-- insert into place values(24,'St. Marys Basilica','Gothic-style Catholic church, consecrated in 1882, attracting crowds on St. Marys Feast Day.','saint.jpg','https://maps.app.goo.gl/TgK5LwqGt1teidxi8',1,0); 
-- insert into place values(25,'Ancient Shri Someshwara Swamy Temple','Built for the god Shiva during the Chola period, this Hindu temple features carvings of deities.','som.jpg','https://www.google.com/maps/place/Ancient+Shri+Someshwara+Swamy+Temple/data=!4m2!3m1!1s0x3bae169be8f41d7d:0x87878fdc95b29010?sa=X&ved=1t:155783&ictx=111',1,0); 
-- insert into place values(26,'Freedom Park','City park on the site of a former jail with multiple monuments & a designated protest area.','freedom.jpg','https://maps.app.goo.gl/j28RgvDMVb7hqPRy6',2,50);
-- insert into place values(27,'Commercial Street','Popular route teeming with crowds visiting the shops (fashion, accessories, tech) & eateries.','comm.jpg','https://www.google.com/maps/place/Commercial+Street,+Tasker+Town,+Shivaji+Nagar,+Bengaluru,+Karnataka+560001/@12.9822268,77.6083677,17z/data=!3m1!4b1!4m6!3m5!1s0x3bae1689d24ec16d:0xb95d15d2169a107d!8m2!3d12.9822268!4d77.6083677!16s%2Fg%2F11bxfz11gp?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',3,0); 
-- insert into place values(28,'Ulsur Lake','Boating & walking in a peaceful, leafy spot, one of the largest lakes in Bangalore.','ulsur.jpg','https://www.google.com/maps/place/Ulsoor+Lake/@12.9824633,77.6193204,16z/data=!3m1!4b1!4m6!3m5!1s0x3bae16902ac7025b:0x5cda8d215b70772c!8m2!3d12.9832468!4d77.6199608!16s%2Fg%2F11dxb363mv?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D',2,0);

-------------------------------------------------------------------------------

-----------------------------------Mysore------------------------------------

-- INSERT INTO place VALUES (29, 'Mysore Palace', 'Indo-Saracenic palace, completed in 1912, with a grand durbar hall and weekly illuminations.', 'mysore.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3baf701103f9a1f9:0xc37fbae2a124da0d', 2, 100);

-- INSERT INTO place VALUES (30, 'St. Philomena''s Cathedral', 'Majestic Neo-Gothic cathedral known for its airy sanctuary, stained glass & soaring twin spires.', 'philomena.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3baf706ecbc32f59:0x8e900b9cb740e32d', 1, 0);

-- INSERT INTO place VALUES (31, 'Sri Chamarajendra Zoological Gardens', 'Vast zoo with a lake featuring numerous animals, including exotic species, plus a souvenir shop.', 'cham.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3baf7023040e7795:0xea57334ccb6cbfcb', 2, 100);

-- INSERT INTO place VALUES (32, 'MYSURU RAILWAY MUSEUM', 'Museum with old train cars & exhibits on the history of India''s rail system, plus a mini train ride.', 'railway.jpg', 'https://www.google.com/maps/place/MYSURU+RAILWAY+MUSEUM/@12.3163393,76.643323,17z/data=!3m1!4b1!4m6!3m5!1s0x3baf7075a5dd3cd3:0x31cb5be481e0c44a!8m2!3d12.3163393!4d76.643323!16s%2Fm%2F027jsxk?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1.5, 50);

-- INSERT INTO place VALUES (33, 'Shri Chamundeshwari Thayi Temple', 'Set on top of a hill, this historic Hindu temple is open to the public & offers panoramic vistas.', 'chamundi.jpg', 'https://www.google.com/maps/place/Mysuru+Shri+Chamundeshwari+Thayi+Temple/@12.2725013,76.6707224,17z/data=!3m1!4b1!4m6!3m5!1s0x3baf706071be8e37:0x74b90976f307c65e!8m2!3d12.2725013!4d76.6707224!16zL20vMGd6NjY2?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 3, 0);

-- INSERT INTO place VALUES (34, 'Sand Museum', 'Compact museum devoted to sand art, housing several intricate sculptures.', 'sand.jpg', 'https://www.google.com/maps/place/Sand+Museum+Mysuru/@12.2949849,76.6819863,17z/data=!3m1!4b1!4m6!3m5!1s0x3baf702a2eb4f7a5:0xa9f4ec7cb24f2031!8m2!3d12.2949849!4d76.6819863!16s%2Fg%2F1pp2vcm3h?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1, 0);

-- INSERT INTO place VALUES (35, 'Ranganathittu Bird Sanctuary', 'Sanctuary for birds & other animals on 6 islets of the Kaveri River, offering guided boat tours.', 'rang.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3baf7777dd032e0b:0xdfd27aad93e2bc43', 3, 500);

-- INSERT INTO place VALUES (36, 'Nagarahole Tiger Reserve', 'Forest reserve with possible sightings of elephants, leopards & Bengal tigers on wildlife safaris.', 'nagar.jpg', 'https://www.google.com/maps/place/Nagarahole+Tiger+Reserve/@12.0734366,76.1510815,17z/data=!3m1!4b1!4m6!3m5!1s0x3ba5ea8fc89ad29b:0xec955245948111ec!8m2!3d12.0734366!4d76.1510815!16zL20vMDk2enpz?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 1500);

-- INSERT INTO place VALUES (37, 'Brindavana Gardens', 'Terraced gardens featuring colourful ornamentals, plus fountain shows & views of the adjacent dam.', 'brinda.jpg', 'https://www.google.com/maps/place/Brindavana+Gardens/@12.4232732,76.5745085,17z/data=!3m1!4b1!4m6!3m5!1s0x3baf78e109feca5d:0x915fba7ee0e6b6b2!8m2!3d12.4232732!4d76.5745085!16s%2Fm%2F02p5s85?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1, 15);

-- INSERT INTO place VALUES (38, 'Karanji Lake', '222-acre lake set in a nature park with a walk-through aviary, butterfly garden & a museum.', 'karanji.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3baf70252f9ae3a3:0x687454ab78a369e1', 2, 0);

-- INSERT INTO place VALUES (39, 'KrishnaRajaSagara Dam', 'Dam built between 1911 & 1938 featuring a lake & botanic park with gardens, boat rides & fountains.', 'krs.jpg', 'https://www.google.com/maps/place/KrishnaRajaSagara+Dam,+Karnataka+571607/@12.4254763,76.5724381,17z/data=!3m1!4b1!4m6!3m5!1s0x3baf78e09377eaaf:0xd0870a1c94c731f5!8m2!3d12.4254763!4d76.5724381!16zL20vMDQxeHdx?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1.5, 0);

-- INSERT INTO place VALUES (40, 'Chamundi Hill', 'A long staircase leads to the top of this hill, with notable temples & shops along the way.', 'chill.jpg', 'https://www.google.com/maps/place/Chamundi+Hill/@12.2734355,76.6804487,15z/data=!3m1!4b1!4m6!3m5!1s0x3baf6fc973a6438b:0xa43b25e3e24d508b!8m2!3d12.2752546!4d76.6701475!16s%2Fg%2F11cs09bzwq?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 3, 0);

---------------------------------------------------------------------------------------------------

--------------------------------------------udupi--------------------------------------------------------

-- INSERT INTO place VALUES (41, 'Udupi Shri Krishna Matha', 'Ancient Hindu temple complex with elaborate, ornate structures, shrines & a massive statue.', 'Udupi Shri Krishna Matha.jpeg', 'https://www.google.com/maps/place/Udupi+Shri+Krishna+Matha+(Temple)/@13.3411662,74.7520446,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbcbba1fb4b68f1:0xf6b5da87d182612e!8m2!3d13.3411662!4d74.7520446!16s%2Fg%2F11h6wlhy7c?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);

-- INSERT INTO place VALUES (42, 'Corporation Bank Heritage Museum', 'This place has a super rich collection of coins, currency and printed literature from the bygone era.', 'Corporation Bank Heritage Museum.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbcbb65e9c9b031:0xfef4cc6a3745acc3', 2, 0);

-- INSERT INTO place VALUES (43, 'Lord Anantheswara Temple', 'The temple is a unique temple where Parashurama is worshipped in Linga iconic symbol of Shiva.', 'Lord Anantheswara Temple.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbcbb9560d3c3eb:0xd350ad0acb609043', 1, 0);

-- INSERT INTO place VALUES (44, 'Mattu Beach', 'Relaxed, secluded beach for swimming, also popular for walks, picnics & sunset views.', 'Mattu Beach.jpeg', 'https://www.google.com/maps/place/Mattu+Beach/@13.2734818,74.7249585,15z/data=!3m1!4b1!4m6!3m5!1s0x3bbcba65277d7c89:0xbce72c5845f20ae2!8m2!3d13.273482!4d74.7249585!16s%2Fg%2F1ptxw1wmf?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);

-- INSERT INTO place VALUES (45, 'Malpe beach', 'Malpe is a natural port in the Udupi District in Karnataka, India. Located at the mouth of the Malpe River about six kilometers to the west of Udupi.', 'Malpe beach.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbcbc1a3ff8b9bd:0x7c5dbd41c1abb9c2', 3, 0);

-- INSERT INTO place VALUES (46, 'Hasta Shilpa Heritage Village Museum', 'Traditional houses have been preserved for future generations at this heritage village attraction.', 'Hasta Shilpa Heritage Village Museum.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbca4b02a311083:0x966a447b74210007', 3, 300);

-- INSERT INTO place VALUES (47, 'Koodlutheertha Falls', 'Isolated waterfall featuring a stream of water that drops 300 ft. into a shallow pool.', 'Koodlutheertha Falls.jpeg', 'https://www.google.com/maps/place/Koodlutheertha+Falls/@13.41299,75.121136,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbb5ce4c235d5a3:0x4be078ca52899325!8m2!3d13.41299!4d75.121136!16s%2Fg%2F11xfml8x3?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1.5, 0);

-- INSERT INTO place VALUES (48, 'Shri Brahmi Durgaparameshwari Temple', 'The most famous attraction of Kamalashile is the ancient Sri Brahmi Durgaparameshwari temple. It is located right at the center of the village.', 'Shri Brahmi Durgaparameshwari Temple.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbc83d0142fe4e3:0xa871ceb4fd25b445', 2, 0);

-- INSERT INTO place VALUES (49, 'Kolluru Shri Mookambika Devi Temple', 'Riverside temple complex dating back around 1,200 years, with statues of Hindu gods and goddesses.', 'Kolluru Shri Mookambika Devi Temple.jpeg', 'https://www.google.com/maps/place/Kolluru+Shri+Mookambika+Devi+Temple/@13.8637692,74.8145174,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbc7ce6806e27ad:0xb5b1ac59955b2d63!8m2!3d13.8637888!4d74.8144538!16zL20vMDluc2dr?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);

-- INSERT INTO place VALUES (50, 'Shri Chandramouleeshwara Devasthana', 'Situated in front of Sri Krishna mutt , this ancient Siva temple is very nice and peaceful. One can offer various poojas by paying the requisite amount.', 'Shri Chandramouleeshwara Devasthana.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbcbb68bad3d345:0xb7afc468539b54a7', 1, 0);

----------------------------------------------------------------------------------------------------

------------------------------------------uttar kannada------------------------------------------

-- INSERT INTO place VALUES (51, 'Shri Idagunji Mahaganapati Temple', 'Enduring Hindu temple set in the forest, dedicated to Ganesha & featuring a colourful facade.', 'Shri Idagunji Mahaganapati Temple.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbc3953dd4b13d3:0x6f4c365c57a09ede', 2, 0);

-- INSERT INTO place VALUES (52, 'Shree Murdeshwara Beach', 'The tranquil beach hosts a number of water activities such as banana boat riding, water skiing, and parasailing, along with speed boats and water scooters.', 'Shree Murdeshwara Beach.jpeg', 'https://www.google.com/maps/place/Shri+Murdeshwara+Beach/@14.0949416,74.4842215,15z/data=!3m1!4b1!4m6!3m5!1s0x3bbc46d9ec9d039b:0x5a2c25f7f2f44422!8m2!3d14.0949418!4d74.4842215!16s%2Fg%2F11c38k4q_h?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 3, 0);

-- INSERT INTO place VALUES (53, 'Magod Waterfalls', 'Monsoon season is a popular time to visit these dramatic waterfalls in a forested setting.', 'Magod Waterfalls.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbeb848d7e361a9:0x4aff1db80e73f523', 1.5, 0);

-- INSERT INTO place VALUES (54, 'Mirjan Fort', 'Mirjan Fort is one of the best places to visit in Karnataka. Located around 22 kilometres from Gokarna.', 'Mirjan Fort.jpeg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbc27e587672ccb:0xa2cb05388565e3c8', 2, 0);

-- INSERT INTO place VALUES (55, 'Sathoddi Falls', 'Picturesque destination featuring a natural waterfall around 50 ft. tall & cool pools of water.', 'Sathoddi Falls.jpeg', 'https://www.google.com/maps/place/Sathoddi+Falls/@14.9499288,74.5792118,17z/data=!3m1!4b1!4m6!3m5!1s0x3bbeea0c466f3c29:0x532bbd90903c2cf8!8m2!3d14.9499288!4d74.5792118!16s%2Fm%2F027h_dl?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2.5, 0);

-- INSERT INTO place VALUES (56, 'Gokarna', 'Gokarna is a small temple town located in the Uttara Kannada district of Karnataka state in southern India. It has a population of around 20,000.', 'gokarna.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbe83d65b0a4c71:0xe9e09fd076bb41c0', 3, 0);

-- INSERT INTO place VALUES (57, 'Murdeshwara', 'Murudeshwara is a temple town in Bhatkala Taluk, North Canara district in Coastal Karnataka. Located on the main Mangalore-Karwar Highway.', 'murdeshwara.jpg', 'https://www.google.com/maps/place/Murdeshwar,+Karnataka/@14.0920312,74.4926905,14z/data=!3m1!4b1!4m6!3m5!1s0x3bbc46d192e0edad:0x87c516bd6653efe1!8m2!3d14.093993!4d74.4898633!16s%2Fm%2F02q6116?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 2, 0);

-- INSERT INTO place VALUES (58, 'Anshi National Park', 'Dense forest inhabited by tigers, panthers & elephants, with trails passing caves & waterfalls.', 'anshi.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbefac8efd62577:0xa3b2b42933f42826', 2, 450);

-- INSERT INTO place VALUES (59, 'Yana Rocks', 'Yana is famous for two massive rock outcrops known as the Bhairaveshwara Shikhara and the Mohini Shikhara ("Shikhara" means "mountain peak").', 'yana.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbe9f385575bcfb:0x69bf3fc41a91cdf3', 3, 0);

-- INSERT INTO place VALUES (60, 'Apsarkonda', 'Apsarkonda is an emerging tourist village near Honnavar, in the district of Uttara Kannada, Karnataka, India.', 'aps.jpg', 'https://www.google.com/maps/place/Apsarkonda,+Karnataka/@14.23426,74.442875,16z/data=!3m1!4b1!4m6!3m5!1s0x3bbc3a2826612983:0xb88a1a539bbbcf02!8m2!3d14.2350721!4d74.4459311!16s%2Fm%2F013cf4lx?hl=en&entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 1, 0);

-- INSERT INTO place VALUES (61, 'Jog Falls', 'This waterfall system (Indias second highest) varies from a trickle to a torrent in monsoon season.', 'jog.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbc0dbba4914849:0xb1a1dc2d7dfe13fb', 3, 0);

-- INSERT INTO place VALUES (62, 'Shri Marikamba Temple', 'Huge, elaborately painted temple dating back centuries, known for its traditional Kaavi murals.', 'mari.jpg', 'https://www.google.com/maps?hl=en&gl=in&um=1&ie=UTF-8&fb=1&sa=X&ftid=0x3bbea9301bb6e5ad:0x57734f23c6ec9ca6', 2, 0);

-------------------------------------------------------------------------------------------------------

---------------------------------------------Bagalkot----------------------------------------------------
-- INSERT INTO place VALUES (63, 'Durga Temple', 'The Durga Temple Complex is the popular site in Aihole, where the ruins are spread across the place. Maintained very well by ASI, the complex contains 8th century temples from the Chalukya period. The architecture and sculpture are excellent and a visit to this place is definitely recommended. There is a museum within the complex, for which, you need to buy separate tickets.', 'Durga_Temple_-_General_View[1].jpg', 'https://maps.app.goo.gl/5iND3auiubTbotH59', 2, 0);

-- INSERT INTO place VALUES (64, 'Archaeological Museum', 'Must visit the museum. You can know prehistoric and historical information of Aihole, Pattadakal and Badami. How ASI reconstructed these monuments one can know after visiting this museum. ASI kept many old sculptures, monuments and photos inside the museum.', 'archaeological-museum.jpg', 'https://maps.app.goo.gl/YC7p62wecw9HzytX8', 1, 50);

-- INSERT INTO place VALUES (65, 'Kasivisvesvara Temple', 'Shiva and Surya temples from 11th century maintained so ably by ASI. Its just by chance I researched on Lakkundi and found this beauties on the net.', 'Kasivisvesvara Temple.jpg', 'https://maps.app.goo.gl/cG2396F3X55CXg4P8', 2, 0);

-- INSERT INTO place VALUES (66, 'Suryanarayana Temple', 'Suryanarayana Temple next to Durga temple has beautiful Surya statue with its hand holding a lotus flower in its Garbh Gruha. Seven horse heads are carved at the bottom of the statue. Temple has pyramidal shikhara architecture.', 'suryanarayana-temple.jpg', 'https://maps.app.goo.gl/Hd6uWX8pMHhYQjcP6', 2, 500);

-- INSERT INTO place VALUES (67, 'Jain Meguti Temple', 'There is a 6th-century Jain temple on Meguti hill just above the Buddhist temple. You can take the walkway to meguti hill from Mallikarjun temple complex. It would be 150 steps to reach the monument. This early Dravidian style Temple is dedicated to Jain Tirthankar.', 'Meguti_Jain_Temple_Main.jpg', 'https://maps.app.goo.gl/Gtwb5s6FuC8a8WG4A', 1, 0);

-- INSERT INTO place VALUES (68, 'Revalphadi Cave', 'Travellers tend to overlook seeing these caves, which are located very close to the main temple complex. The lovely temple in this cave has a gorgeous dancing Natraj statue carved in the wall.', 'Revalphadi Cave.jpg', 'https://maps.app.goo.gl/NXCqxxh81W24bCV4A', 3, 500);

-- INSERT INTO place VALUES (69, 'Museum & Cultural Hall', 'Almati Dam is the second highest dam of India and the museum has been built as a tribute to the way the dam has been constructed. Museum has painstakingly focused on the local culture and tradition and one needs to spend at least half a day to understand what Bagalkot is.', 'Museum & Cultural Hall.jpg', 'https://maps.app.goo.gl/Fc5NLtrNJxUApxsv8', 2, 1100);

-- INSERT INTO place VALUES (70, 'Badami', 'Badami, formerly known as Vātāpi, is a town and headquarters of a taluk by the same name, in the Bagalkot district of Karnataka, India. It was the regal capital of the Badami Chalukyas from 540 to 757.', 'Badami.jpeg', 'https://maps.app.goo.gl/Au1KRGLsQU5MojfC7', 4, 30);

-------------------------------------------------------------------------------------------------------

-------------------------------------
--chikkamangaluru
-- insert into place values(71,'Baba budangiri','Baba Budangiri is a mountain range renowned for its shrine to the Sufi Saint, Hazrat Dada Hayat Khalandar. It is also a popular trekking spot from Chikmagalur. The 9km trek starts from Sarpadhari and takes 5 hours to complete. The rare Neel Kurinji flowers also bloom here once in 12 years.','Baba budangiri.jpg','https://maps.app.goo.gl/7SH4Jn1dyhBDp8VZ8',3,0); 
-- insert into place values(72,'Mullayanagiri','Mullayanagiri is the highest peak of Karnataka known for its peaceful ambience and natures raw beauty. Part of the Baba Budangiri Ranges, it is a famous trekking point from Chikmagalur. Mountain biking is also available here.','Mullayanagiri.jpeg','https://maps.app.goo.gl/hRuQBpAdaP3URCRr5',24,0); 
-- insert into place values(73,'Bhadra Wildlife','Covering a vast area of over 490 sq.kms, the Bhadra Wildlife Sanctuary is spread over the districts of Shimoga and Chikmagalur, 38 km west of the Chikmagalur town in Karnataka. Surrounded by hills of the Western Ghats on all sides, the view of the Bhadra Wildlife Sanctuary looks like a scene right out of a movie!','Bhadra-wildlife-sanctuary.jpg','https://maps.app.goo.gl/kBFH2pLUnZu8DE577',2,400); 
-- insert into place values(74,'Kudremukh national park','A UNESCO World Heritage Site, the Kudremukh National Park is famous for bird watching and trekking. It houses around 200 species of birds. A permit is needed from the forest ranger to trek to Kudremukh Peak.','Kudremukh national park.jpeg','https://maps.app.goo.gl/VKQfchpLSNRuicuv5',3,250); 
-- insert into place values(75,'Bhadra river','Located in Karnataka, Chikmaglur is a haven for adventure-seekers. It is situated 45 kms from Bhadra River which is equidistant from well-known hill stations and wildlife regions in the Western Ghats such as Sakleshpur, Kudremukh, Charamadi Ghats','Bhadra river.jpg','https://maps.app.goo.gl/vH2gTQy68gFDoFjLA',4,1200); 
-- insert into place values(76,'chikmagalur coffee plantation','Taking a tour of the resplendent coffee plantations is one of the most essential things to do in Chikmagalur. Aside from reveling in the fresh aromatic smell of coffee beans and relaxing amidst the verdant green plantations, the estates owners arrange frequent tours where you can learn about the history of coffee and other details.','chikkmagalur.jpeg','https://maps.app.goo.gl/Qi7CMMukqfu7JVMC8',2,0); 
-- insert into place values(77,'Hebbe falls','Hebbe Falls is a stunning waterfall located in the Chikmagalur. The water here is believed to have medicinal properties. The area around the waterfall has dense forest and plenty of coffee plantations.','Hebbe falls.jpeg','https://maps.app.goo.gl/jeBmaXsLNdRR7wdy5',3,600); 
-- insert into place values(78,'Bhadra Dam','The Bhadra dam is constructed on the river Bhadra, which is a tributary of the River Tungabhadra. The dam is surrounded by lush greenery is popular for kayaking and boating.','Bhadra Dam.jpg','https://maps.app.goo.gl/SRaoL2dZYT4q9WBQ9',2,0); 
-- insert into place values(79,'kalhatti falls','Kalhatti Falls, also known as Kallathigiri Falls, is mesmerising. It is a popular picnic and camping spot. There is a small Shiva Temple located in the vicinity.','kalhatti falls.jpeg','https://maps.app.goo.gl/sFLf7rrf8Pkytdc26',2,0); 
-- insert into place values(80,'Hirekolale lake','Situated amidst the huge mountain ranges covered in green with the lake in the backdrop, a drive to the Hirekolale Lake is worth it for experiencing a perfect picture postcard setting. The beauty of the lake enhances when visited during sunset as the saffron colour of the sunrays gets reflected onto the lake thereby making the spot appear magical.','Hirekolale lake.jpeg','https://maps.app.goo.gl/bDMivZfg5DHJF8Cf7',1,150); 
-- insert into place values(81,'kemmanagudi','Kemmanagundi is one of the most popular hill stations and retreats in the area. The highest peak of Karnataka, Mullayanagiri, too is found here. Natural beauty take all shapes and forms here from streams, waterfalls, springs, forests to gardens.','kemmanagudi.jpg','https://maps.app.goo.gl/83zdQ1umuXDSvRbRA',3,0); 
-- insert into place values(82,'Belavadi','Being a national heritage site and one of the prime attractions in Karnataka, Belavadi is situated at a distance of 29 km from the town of Chikmagalur. A scenic village which is surrounded by green lands, trees, and tons of lush greenery makes it a perfect place for one to relax at.','Belavadi.jpeg','https://maps.app.goo.gl/fsw8SGWFC332RUS28',3,400); 
-- insert into place values(83,'Sringeri Sharada peetham','Nestled amongst the backdrop of the exquisite Malnad Hills on the banks of River Tunga and established by Sri Adi Shankaracharya, Sringeri Sharada Peetha is named after the great Rishi Rishyashringa. The prime deity of the temple is Sharadhamba Devi.','Sringeri.webp','https://maps.app.goo.gl/JGLWT4Gmqum7EDwt5',2,0); 


-- --Bijapur
-- insert into place values(84,'Gol gumbaz','Gol Gumbaz, also known as Gola Gummata in literal sense means a circular dome. It is the mausoleum of Mohammed Adil Shah, Sultan of Bijapur. The tom is located in Bijapur, Karnataka and was built by architect Yaqut in 1656. It is considered as the structural triumph of Deccan architecture.','Gol gumbaz.jpeg','https://maps.app.goo.gl/LPhR26Qvpx7ioiL97',3,20); 
-- insert into place values(85,'Ibrahim rauza','Also known as The Taj Mahal of the Deccan, it is home to the remains of the Adil Shah ruler Ibrahim Adil Shah II and his wife Taj Sultana','Ibrahim rauza.jpeg','https://maps.app.goo.gl/RedDAqMYkC9UmBes9',2,10);
-- insert into place values(86,'jamia masjid','Built by Ali Adil Shah to celebrate his victory in the Battle of Talikota, it is one of the first mosques in India.','jamia masjid.jpeg','https://maps.app.goo.gl/8CrStGy9AbFB4GM16',1,0); 
-- insert into place values(87,'the citadel','With its own surrounding walls and a moat, The Citadel houses palaces, gardens and halls from the Adil Shahi Dynasty. It is mostly dilapidated.','the citadel.jpeg','https://maps.app.goo.gl/6o25bbvR6UTBCrKWA',1,0);
-- insert into place values(88,'Mithari and asar mahals','Built by Muhammad Adil Shah in 1640s, it serves as a place of worship for Muslim devotees, originally meant to be a Hall of Justice.','Mithari and asar mahals.jpeg','https://maps.app.goo.gl/eB1ho1oaMfVbvooS7',2,10); 
-- insert into place values(89,'bijapur fort','Bijapur Fort is an important monument of historical importance situated in Bijapur. It was built during the rule of Adilshah dynasty and is endearingly known as the Agra of South India. It is also known as Vijapura Fort and is enclosed within a moat of 50 feet. The fort has different structures inside which were built by rulers of different dynasties over time.','bijapur fort.jpeg','https://maps.app.goo.gl/hM5c8h3bQMURBAv67',2,20);
-- insert into place values(90,'bara kaman','Built in 1672 AD by Adil Shah II, Bara Kaman is an unfinished structure situated in Bijapur which is a mausoleum of 12 beautiful arches. The structure was supposed to have twelve arches vertically and horizontally surrounding the mausoleum of the king Ali and his wives.','bara kaman.jpeg','https://maps.app.goo.gl/qjH1qxTvm9SmC8c79',2,20);
-- insert into place values(91,'gagan mahal','Built by Adil Shah I in 1561, Gagan Mahal, also known as Heavenly Mahal (Sky Mahal) is famous for its architectural finesse and design. Boasting of three arches, the two-storeyed monuments had the Darbar Hall on the ground floor and the upper storey was supposed to be the residence for the royal family.','gagan mahal.jpeg','https://maps.app.goo.gl/RgGcykR5iSyrmSTH8',2,20);
-- insert into place values(92,'mehtar mahal','Situated inside the premises of the Bijapur Fort, Mehtar Mahal dates back to the 1620 and is known to be the most elegant structure within the fort. Built in the Indo-Sarcenic style, the carvings on the minarets are in the Hindu architectural style','mehtar mahal.jpeg','https://maps.app.goo.gl/qruh3xSskRYGnFL37',1,20); 
-- insert into place values(93,'saath kabar','Saath Kabar literally translates to sixty graves and has a very tragic story behind it. It is believed that the army chief of Adil Shah IIs court killed his 63 wives in cruel jealousy that they might remarry after he died in the battle with Shivaji.','saath kabar.jpeg','https://maps.app.goo.gl/5Krf331ofcdog8fHA',1,20);
 

-- --Hassan
-- insert into place values(94,'Hoysala temple','Nageshwara and Channakeshava, the twin temples built at edge of the Mosale village depicts the Hoysala style of architecture. These structures are famous for its intricately designed architecture and scriptures.','Hoysala temple.jpeg','https://maps.app.goo.gl/CWAjaNrigQfehNhbA',2,100); 
-- insert into place values(95,'Shettihalli church','Shettyhalli submerged church as it is called was built on the banks of the River Hemavathi in the 18th century. The church is submerged in water for most parts of the year and is a site to watch.','Shettihalli church.jpeg','https://maps.app.goo.gl/MweKFs4FuXTdkGhQ6',1,150); 
-- insert into place values(96,'bhagwan Bahybali statue','Built in 983 AD, Bhagwan Bahubali Statue or Gommateshwara is a 17 metre tall free standing monoliths statue of the Jain deity, Bahubali. It is located on Vindhyagiri Hills. The location is also a perfect place to get a panoramic view of the surroundings. The statue was awarded the title of one of the seven wonders of India in 2005.','bhagwan Bahybali statue.jpeg','https://maps.app.goo.gl/NULbwe7etS5hE3AS8',2,50); 
-- insert into place values(97,'Gorur dam','Gorur dam forms the Hemavathi reservoir built in the 1900s across the Hemavathi river. The dam is named after a famous Kanada literature personality called Gorur Ramaswamy Iyengar.','Gorur dam.jpeg','https://maps.app.goo.gl/Q2HwibfcmX222uCSA',2,0); 
-- insert into place values(98,'Kadareswara Temple','Kadareswara Temple is dedicated to Lord Shiva and was built by Veer Ballala II, a Hoysala King and Ketaladevi, his Queen around 1220 A. D. The stunning structure has traditional Hoysala style architecture in soapstone and has enchantingly intricate carvings, relief work and sculptures depicting the legends of Lord Shiva and Lord Vishnu.','Kadareswara Temple.jpeg','https://maps.app.goo.gl/kCLUXMjGw9nV5Lzn7',2,50); 
-- insert into place values(99,'Lakshmi Narasimha Temple','Lakshmi Narasimha Temple is a stunning 13th-century shrine temple built by Bommanna Dandanayaka who served as a commander in the Hoysala Dynasty. The bas-relief and sculpture work on the temple increase its architectural beauty and are a treat to the tourists. The temple is a built with soapstone and is another good example of the rich culture of the dynasty.','Lakshmi Narasimha Temple.jpeg','https://maps.app.goo.gl/tRKaYjrrPzT6wqUg7',1,0); 
-- insert into place values(100,'Shri Ranganatha temple','Shri Ranganatha temple is built on the Mavinakerre hill along the way from Hassan. It consists of a Hanuman statue and as a contemporary architecture. The drive is pleasing surrounded by beautiful scenery','Shri Ranganatha temple.jpeg','https://maps.app.goo.gl/scwr8DNfy9Sg14uK9',2,50); 
-- insert into place values(101,'Maharaja Park','Maharaja Park is a peaceful park in the town equipped with a childrens play area, spacious walkways lined by tall trees and lush green lawns. It is a popular picnic spot in the town and is often visited by locals and tourists as well.','Maharaja Park.jpeg','https://maps.app.goo.gl/X8hnrVvtLAMebCQX6',3,450); 
-- insert into place values(102,'Kabbaligere Hill','Kabbaligere Hill is a scenic location near Kabbaligere Village. Many prefer going on long drives or for photography, nature walks or trekking on the hill. It a perfect tranquil escape for the locals.','Kabbaligere Hill.jpeg','https://maps.app.goo.gl/YingBqCfpJnkmpiq8',2,0); 
-- insert into place values(103,'Bisle Ghat','Bisle Ghat or Bisle Forest Reserve is a famous sanctuary in the Western Ghats housing a wide variety of flora and fauna. Bisle Betta is a viewpoint to get a panoramic view of the surrounding mountain ranges. Bisle Ghat at the other end forest reserve acts as a natural corridor that links the Pushpagiri Wildlife Sanctuary.','Bisle Ghat.jpeg','https://maps.app.goo.gl/zv72T46avw4Fe6fH8',3,100); 
-- insert into place values(104,'Hemvathy Reservoir','Hemvathy Reservoir is the formed by Hemvathy Dam constructed on River Hemvathy. With a catchment area of 2,800 square kilometres, the reservoir is an important source of drinking water and water for irrigation purposes for the region. The beautiful surroundings also make the location a preferred picnic spot.','Hemvathy Reservoir.jpeg','https://maps.app.goo.gl/BAdFvjKzqwVFaU4y5',1,100); 
-- insert into place values(105,'Jain matt','Jain Matt is an important Jain pilgrimage located on a hill and needs climbing about 700 steps. The monastery has 19th century stone and metal idols. The Monastery head, Charukeerti Bhattarakha Swamy meets devotees almost every day. Followers throng in large numbers to seek blessings from the monastery head every day.','jain matt.jpeg','https://maps.app.goo.gl/RBNVaPD9jhPsUBLq5',2,0); 
-- insert into place values(106,'Parvathamma Betta','Parvathamma Betta is famous amidst trekker. The uneven and rough terrain of the attraction is deemed apt by many adventure seekers. The attraction also has an ancient temple dedicated to Lord Shiva and his consort, Goddess Parvati. The top of the attraction is frequently visited to get a fabulous view of the surroundings.','Parvathamma Betta.jpeg','https://maps.app.goo.gl/WUjoDuH87DWFTdkJ8',2,1200); 
-- insert into place values(107,'Allalanatha Temple','Allalanatha Temple is a dedicated to Lord Channajesava. The temple has an 18 foot tall idol of the presiding deity made of black stone. Several religious poojas and Abhishekas are also performed at the temple.','Allalanatha Temple.jpeg','https://maps.app.goo.gl/xqHbwyT2jDPgjw2r5',1,0); 
-- --Dharwad
-- insert into place values(108,'agadi thota','Agadi Thota is a one day activity place.People of all age group can hangout along with various activities and also food and snacks is served.','agadi thota.jpeg','https://maps.app.goo.gl/RWsZWog45kLyQzsa7',3,700); 
-- insert into place values(109,'utsav Rock','Utsav Rock Garden is a ‘Contemporary Sculpture Museum’. It is an excellent exploration of forgotten rural empire of Karnataka, India through Art, Architecture, Sculptures and Modern Art. It has been crowned with 8 World Records for having thousands of distinctive world class Sculptures','utsav Rock.jpeg','https://maps.app.goo.gl/TnYZkhCqDG25RCug8',2,600); 
-- insert into place values(110,'Sri Mallikarjun','It is a place for history lovers to go and pay homage to their ancestors as Dharwad fort still stands tall even today as it was before being built in 12th century by Chalukyas offering a panoramic view of its surroundings. In addition, you can go around admiring bastions, ramparts and fine carvings.','Sri Mallikarjun.jpeg','https://maps.app.goo.gl/f4rKbt6Dg5HVUFJq9',1,0); 
-- insert into place values(111,'Unkal lake','Unkal lake is a tranquil haven away from the hustle-bustle life located on the outskirts of Dharwad city. This beautiful lake surrounded with green plants has many walking trails suitable for picnics, boating and bird watching spot making people forget about everyday stress while enjoying magical dusk over peaceful waters.','Unkal lake.jpeg','https://maps.app.goo.gl/mQLDAsrBpqBPV6iW8',2,100); 
-- insert into place values(112,'Chandramouleshwara temple','Get absorbed in the architectural marvels of Chandramouleshwara temple that is one of the ancient temples dedicated to Lord Shiva. The temple dates back to the 12th century and is built in Dravidian style with tons of carvings on its walls and pillars. Its peace filled environment and spiritual values make it a destination for the religion as well as culture enthusiasts.','Chandramouleshwara temple.jpeg','https://maps.app.goo.gl/NaYxYjwzngbqhFWw7',1,0);

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---------------------------------- HOTELS-------------------------------
-- create table hotel(
-- cityid int ,
-- hotelid int,
-- hotelname varchar(40) not NULL,
-- hotelprice int  not NULL,
-- hotelLink varchar(50)  not NULL,
-- hotelimg varchar(20) not NULL,
-- primary key(cityid,hotelid),
-- foreign key(cityid) references city(cityid)
-- );

-- 1=>Belagvi
-- insert into hotel values(1,1,'Hotel ramdev',1970,'https://www.hotelramdevinternational.com/','ramdev.jpg');
-- insert into hotel values(1,2,'Uk 27 the fern',6005,'https://www.fernhotels.com/uk-the-fern-belagavi','uk27.jpg');
-- insert into hotel values(1,3,'Mayur Belgaum Presidency Hotel',2331,'https://mayurbelgaumpresidencyhotel.com/','mayur.jpg');
-- insert into hotel values(1,4,'Pai Resorts',4280,'https://pairesorts.com/','pai.jpg');
-- insert into hotel values(1,5,'Native Hotels',2130,'https://www.nativehotels.co.in/','native.jpg');
-- 2=>Bangalore
-- insert into hotel values(2,6,'Sheraton Grand Bengaluru Whitefield Hotel',26550,'https://www.marriott.com/','sherton.jpg');
-- insert into hotel values(2,7,'The signature Inn hotel',642,'https://www.thesignatureinn.in/','sign.jpg');
-- insert into hotel values(2,8,'Trinity suites',3360,'https://www.trinitysuites.in/','trinity.jpg');
-- insert into hotel values(2,9,'The chancery hotel',4370,'https://chanceryhotels.com/chancery/','chancery.jpg');
-- insert into hotel values(2,10,'The Rialto hotel',2582,'https://www.rialtohotel.in/','rialto.jpg');
-- -- 3=>Mysore
-- insert into hotel values(3,11,'Le Oak Inn',1800,'https://leoakinn.com/','le.jpg');
-- insert into hotel values(3,12,'Aishwarya Residency',1000,'https://aishwaryagroupofhotels.com/','aish.jpg');
-- insert into hotel values(3,13,'Hotel southernstar',4200,'https://www.hotelsouthernstar.com/mysuru/','south.jpg');
-- insert into hotel values(3,14,'The green hotel',3625,'http://www.greenhotelindia.com/','gree.jpg');
-- insert into hotel values(3,15,'Hotel grandserene',1625,'https://hotelgrandserene.com/','grand.jpg');
-- -- 4=>Udupi
-- insert into hotel values(4,16,'samnvay luxury hotel',4499,'http://samanvayudupi.com/','samnvay.jpg');
-- insert into hotel values(4,17,'pancharatna paradise',670,'https://kediyoorhotels.com/','panch.jpg');
-- insert into hotel values(4,18,'SAADHANA COMFORTS LODGE',2700,'https://saadhanatower.com/','saadhana.jpg');
-- insert into hotel values(4,19,'Hotel udupi residency',2046,'https://www.udupiresidency.com/','residencyudupi.jpg');
-- insert into hotel values(4,20,'Shoolin Resorts',1674,'https://theshoolingroup.com','shoolin.jpg');
-- -- 5=>Uttar kannada
-- insert into hotel values(5, 21, 'Namaste Gokarna', 3250, 'https://namastegokarna.com/', 'namaste.jpg');
-- insert into hotel values(5, 22, 'Kudle Beach View Resort', 2500, 'https://kudlebeachview.com/', 'kudle.jpg');
-- insert into hotel values(5, 23, 'Stone Wood Jungle Resort', 6500, 'https://www.stonewoodresorts.com/jungle-resort-dandeli/', 'stone.jpg');
-- insert into hotel values(5, 24, 'Century Resort', 1200, 'https://www.centuryresortdandeli.in/', 'century.jpg');
-- insert into hotel values(5, 25, 'Hotel Citywalk Residency', 1600, 'https://hotelcitywalk.com/', 'citywalk.jpg');
-- -- -- 6=>Bagalkot
-- insert into hotel values(6, 26, 'Clarks Inn', 2747, 'https://www.theclarkshotels.com/', 'clarks.jpg');
-- insert into hotel values(6, 27, 'Kanthi Resorts Badami', 3924, 'https://www.kanthiresorts.com/', 'kanthi.jpg');
-- insert into hotel values(6, 28, 'Hotel Haripriya', 1099, 'https://hotelharipriya.com', 'hari.jpg');
-- insert into hotel values(6, 29, 'The Clarks Hotel', 958, 'https://www.theclarkshotels.com/', 'cl.jpg');
-- insert into hotel values(6, 30, 'Krishna Heritage Badami', 2200, 'https://krishnaheritagebadami.com/', 'krish.jpg');

-- -- -- 7=>chikkmanglore
-- insert into hotel values(7, 31, 'The Grand Retreat', 2329, 'https://thegrandretreat.in/', 'retreat.jpg');
-- insert into hotel values(7, 32, 'The Blossom', 3200, 'https://theblossom.in/', 'bloss.jpg');
-- insert into hotel values(7, 33, 'Villaur Vinkhan', 4020, 'https://www.villaurvinkhan.com/', 'villur.jpg');
-- insert into hotel values(7, 34, 'Trivik', 2182, 'https://trivikchikmagalur.com/', 'trivik.jpg');
-- insert into hotel values(7, 35, 'Sunyata Eco Hotel', 3659, 'https://sunyatahotel.com/rooms-suites/', 'sunyata.jpg');

-- -- 8=> bijapur
-- insert into hotel values(8, 36, 'Hotel Kanishka International', 1727, 'https://www.hotelkanishkainternational.com/', 'kanishka.jpg');
-- insert into hotel values(8, 37, 'Galaxy Club & Hotel', 2025, 'https://www.galaxyhotel.co.in/', 'galaxy.jpg');
-- insert into hotel values(8, 38, 'Kanish International', 1623, 'https://www.hotelkanishkainternational.com/', 'kanish.jpg');
-- insert into hotel values(8, 39, 'Hotel Clove', 2400, 'https://www.hotelclove.com/', 'clove.jpg');
-- insert into hotel values(8, 40, 'Unnati Stay Inn', 625, 'https://www.unnatistayinn.in/', 'unnati.jpg');

-- -- 9=>hassan
-- insert into hotel values(9, 41, 'Hoysala Village Resort', 14419, 'https://www.hoysalavillageresorts.com/', 'hoysala.jpg');
-- insert into hotel values(9, 42, 'The Ashok Hassan', 3648, 'http://hassanashok.com/stay.html', 'ashok.jpg');
-- insert into hotel values(9, 43, 'Pearl Hotel', 1700, 'https://www.pearlhotels.in', 'pearl.jpg');
-- insert into hotel values(9, 44, 'Aarya Mansion', 3212, 'https://aaryamansionhotel.com', 'aarya.jpg');
-- insert into hotel values(9, 45, 'Palguni Residency', 2172, 'https://palguniresidency.com/', 'palguni.jpg');

-- -- 10=>dharwad
-- insert into hotel values(10, 46, 'Hotel G R T Square', 950, 'https://www.hotelgsquareshirdi.com/', 'grt.jpg');
-- insert into hotel values(10, 47, 'Hotel Dwarawata', 1424, 'https://dwarawata.com/', 'dwarata.jpg');
-- insert into hotel values(10, 48, 'Hotel Royal Inn Lodge', 1050, 'https://naveenhotels.com/', 'royal.jpg');
-- insert into hotel values(10, 49, 'Lemon Tree Hotel', 1424, 'https://www.lemontreehotels.com/', 'tree.jpg');
-- insert into hotel values(10, 50, 'Hotel Crown Inn', 1260, 'https://www.hotelcrowninn.com/', 'crwon.jpg');

-----------------------------------------------------------------------------------------------------------

--------------------------------Update statements--------------------------------
-- UPDATE place 
-- SET placeimg = 'brahmi.jpg' 
-- WHERE placeid = 48;

-- UPDATE place 
-- SET placeimg = 'Shree Murdeshwara Beech.jpeg' 
-- WHERE placeid = 52;

-- UPDATE place 
-- SET placeimg = 'gokrna.jpg' 
-- WHERE placeid = 56;

-- UPDATE place 
-- SET placeimg = 'jain matt.jpeg' 
-- WHERE placeid = 67;

-- UPDATE place 
-- SET placeimg = 'belavadi.jpg' 
-- WHERE placeid = 82;

-- UPDATE place 
-- SET placeimg = 'kasi.jpg' 
-- WHERE placeid = 65;

--------------------------------------------------------------------------------------------
-- select p.placename,p.placedesc,p.placeimg
-- FROM place p,city c,city_place cp
-- where p.placeid=cp.placeid AND c.cityid=cp.cityid AND c.cityname='Belagavi';

SELECT * FROM place;


-- SELECT * from added;
create table added(
placeid integer primary key AUTOINCREMENT,
placename varchar(30),
placeloc varchar(40),
budget int,
hours int,
foreign key (placeid) references place (placeid) ON DELETE CASCADE,
foreign key (placename) references place (placename) ON DELETE CASCADE,
foreign key(placeloc) references place (placeloc) ON DELETE CASCADE,
foreign key (budget) references place (budget) ON DELETE CASCADE,
foreign key(hours) references place (hours) ON DELETE CASCADE
);

SELECT * FROM added;