BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "country" (
	"country_id"	INTEGER NOT NULL,
	"phone_code"	INTEGER NOT NULL,
	"country_code"	TEXT NOT NULL,
	"country_name"	TEXT NOT NULL,
	PRIMARY KEY("country_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "league" (
	"league_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"country_id"	INTEGER NOT NULL,
	PRIMARY KEY("league_id" AUTOINCREMENT),
	FOREIGN KEY("country_id") REFERENCES "country"("country_id")
);
CREATE TABLE IF NOT EXISTS "position" (
	"position_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("position_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "PlayerAndPosition" (
	"player_position_id"	INTEGER NOT NULL,
	"position_id"	INTEGER NOT NULL,
	"player_id"	INTEGER NOT NULL,
	PRIMARY KEY("player_position_id" AUTOINCREMENT),
	FOREIGN KEY("position_id") REFERENCES "position"("position_id"),
	FOREIGN KEY("player_id") REFERENCES "player"("player_id")
);
CREATE TABLE IF NOT EXISTS "PlayerAndCountry" (
	"player_country_id"	INTEGER NOT NULL,
	"player_id"	INTEGER NOT NULL,
	"country_id"	INTEGER NOT NULL,
	PRIMARY KEY("player_country_id" AUTOINCREMENT),
	FOREIGN KEY("player_id") REFERENCES "player"("player_id"),
	FOREIGN KEY("country_id") REFERENCES "country"("country_id")
);
CREATE TABLE IF NOT EXISTS "player" (
	"player_id"	INTEGER NOT NULL,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"age"	INTEGER NOT NULL,
	"gender"	TEXT NOT NULL,
	"height"	REAL NOT NULL,
	"weight"	TEXT NOT NULL,
	"PA"	INTEGER NOT NULL,
	"CA"	INTEGER NOT NULL,
	"club_id"	INTEGER NOT NULL,
	PRIMARY KEY("player_id" AUTOINCREMENT),
	FOREIGN KEY("club_id") REFERENCES "club"("club_id")
);
CREATE TABLE IF NOT EXISTS "club" (
	"club_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"stadium"	TEXT NOT NULL,
	"city"	TEXT NOT NULL,
	"form_date"	TEXT NOT NULL,
	"league_id"	INTEGER NOT NULL,
	PRIMARY KEY("club_id" AUTOINCREMENT),
	FOREIGN KEY("league_id") REFERENCES "league"("league_id")
);
INSERT INTO "country" ("country_id","phone_code","country_code","country_name") VALUES (1,93,'AF','Afghanistan'),
 (2,358,'AX','Aland Islands'),
 (3,355,'AL','Albania'),
 (4,213,'DZ','Algeria'),
 (5,1684,'AS','American Samoa'),
 (6,376,'AD','Andorra'),
 (7,244,'AO','Angola'),
 (8,1264,'AI','Anguilla'),
 (9,672,'AQ','Antarctica'),
 (10,1268,'AG','Antigua and Barbuda'),
 (11,54,'AR','Argentina'),
 (12,374,'AM','Armenia'),
 (13,297,'AW','Aruba'),
 (14,61,'AU','Australia'),
 (15,43,'AT','Austria'),
 (16,994,'AZ','Azerbaijan'),
 (17,1242,'BS','Bahamas'),
 (18,973,'BH','Bahrain'),
 (19,880,'BD','Bangladesh'),
 (20,1246,'BB','Barbados'),
 (21,375,'BY','Belarus'),
 (22,32,'BE','Belgium'),
 (23,501,'BZ','Belize'),
 (24,229,'BJ','Benin'),
 (25,1441,'BM','Bermuda'),
 (26,975,'BT','Bhutan'),
 (27,591,'BO','Bolivia'),
 (28,599,'BQ','Bonaire, Sint Eustatius and Saba'),
 (29,387,'BA','Bosnia and Herzegovina'),
 (30,267,'BW','Botswana'),
 (31,55,'BV','Bouvet Island'),
 (32,55,'BR','Brazil'),
 (33,246,'IO','British Indian Ocean Territory'),
 (34,673,'BN','Brunei Darussalam'),
 (35,359,'BG','Bulgaria'),
 (36,226,'BF','Burkina Faso'),
 (37,257,'BI','Burundi'),
 (38,855,'KH','Cambodia'),
 (39,237,'CM','Cameroon'),
 (40,1,'CA','Canada'),
 (41,238,'CV','Cape Verde'),
 (42,1345,'KY','Cayman Islands'),
 (43,236,'CF','Central African Republic'),
 (44,235,'TD','Chad'),
 (45,56,'CL','Chile'),
 (46,86,'CN','China'),
 (47,61,'CX','Christmas Island'),
 (48,672,'CC','Cocos (Keeling) Islands'),
 (49,57,'CO','Colombia'),
 (50,269,'KM','Comoros'),
 (51,242,'CG','Congo'),
 (52,242,'CD','Congo, Democratic Republic of the Congo'),
 (53,682,'CK','Cook Islands'),
 (54,506,'CR','Costa Rica'),
 (55,225,'CI','Cote D''Ivoire'),
 (56,385,'HR','Croatia'),
 (57,53,'CU','Cuba'),
 (58,599,'CW','Curacao'),
 (59,357,'CY','Cyprus'),
 (60,420,'CZ','Czech Republic'),
 (61,45,'DK','Denmark'),
 (62,253,'DJ','Djibouti'),
 (63,1767,'DM','Dominica'),
 (64,1809,'DO','Dominican Republic'),
 (65,593,'EC','Ecuador'),
 (66,20,'EG','Egypt'),
 (67,503,'SV','El Salvador'),
 (68,240,'GQ','Equatorial Guinea'),
 (69,291,'ER','Eritrea'),
 (70,372,'EE','Estonia'),
 (71,251,'ET','Ethiopia'),
 (72,500,'FK','Falkland Islands (Malvinas)'),
 (73,298,'FO','Faroe Islands'),
 (74,679,'FJ','Fiji'),
 (75,358,'FI','Finland'),
 (76,33,'FR','France'),
 (77,594,'GF','French Guiana'),
 (78,689,'PF','French Polynesia'),
 (79,262,'TF','French Southern Territories'),
 (80,241,'GA','Gabon'),
 (81,220,'GM','Gambia'),
 (82,995,'GE','Georgia'),
 (83,49,'DE','Germany'),
 (84,233,'GH','Ghana'),
 (85,350,'GI','Gibraltar'),
 (86,30,'GR','Greece'),
 (87,299,'GL','Greenland'),
 (88,1473,'GD','Grenada'),
 (89,590,'GP','Guadeloupe'),
 (90,1671,'GU','Guam'),
 (91,502,'GT','Guatemala'),
 (92,44,'GG','Guernsey'),
 (93,224,'GN','Guinea'),
 (94,245,'GW','Guinea-Bissau'),
 (95,592,'GY','Guyana'),
 (96,509,'HT','Haiti'),
 (97,0,'HM','Heard Island and Mcdonald Islands'),
 (98,39,'VA','Holy See (Vatican City State)'),
 (99,504,'HN','Honduras'),
 (100,852,'HK','Hong Kong'),
 (101,36,'HU','Hungary'),
 (102,354,'IS','Iceland'),
 (103,91,'IN','India'),
 (104,62,'ID','Indonesia'),
 (105,98,'IR','Iran, Islamic Republic of'),
 (106,964,'IQ','Iraq'),
 (107,353,'IE','Ireland'),
 (108,44,'IM','Isle of Man'),
 (109,972,'IL','Israel'),
 (110,39,'IT','Italy'),
 (111,1876,'JM','Jamaica'),
 (112,81,'JP','Japan'),
 (113,44,'JE','Jersey'),
 (114,962,'JO','Jordan'),
 (115,7,'KZ','Kazakhstan'),
 (116,254,'KE','Kenya'),
 (117,686,'KI','Kiribati'),
 (118,850,'KP','Korea, Democratic People''s Republic of'),
 (119,82,'KR','Korea, Republic of'),
 (120,381,'XK','Kosovo'),
 (121,965,'KW','Kuwait'),
 (122,996,'KG','Kyrgyzstan'),
 (123,856,'LA','Lao People''s Democratic Republic'),
 (124,371,'LV','Latvia'),
 (125,961,'LB','Lebanon'),
 (126,266,'LS','Lesotho'),
 (127,231,'LR','Liberia'),
 (128,218,'LY','Libyan Arab Jamahiriya'),
 (129,423,'LI','Liechtenstein'),
 (130,370,'LT','Lithuania'),
 (131,352,'LU','Luxembourg'),
 (132,853,'MO','Macao'),
 (133,389,'MK','Macedonia, the Former Yugoslav Republic of'),
 (134,261,'MG','Madagascar'),
 (135,265,'MW','Malawi'),
 (136,60,'MY','Malaysia'),
 (137,960,'MV','Maldives'),
 (138,223,'ML','Mali'),
 (139,356,'MT','Malta'),
 (140,692,'MH','Marshall Islands'),
 (141,596,'MQ','Martinique'),
 (142,222,'MR','Mauritania'),
 (143,230,'MU','Mauritius'),
 (144,269,'YT','Mayotte'),
 (145,52,'MX','Mexico'),
 (146,691,'FM','Micronesia, Federated States of'),
 (147,373,'MD','Moldova, Republic of'),
 (148,377,'MC','Monaco'),
 (149,976,'MN','Mongolia'),
 (150,382,'ME','Montenegro'),
 (151,1664,'MS','Montserrat'),
 (152,212,'MA','Morocco'),
 (153,258,'MZ','Mozambique'),
 (154,95,'MM','Myanmar'),
 (155,264,'NA','Namibia'),
 (156,674,'NR','Nauru'),
 (157,977,'NP','Nepal'),
 (158,31,'NL','Netherlands'),
 (159,599,'AN','Netherlands Antilles'),
 (160,687,'NC','New Caledonia'),
 (161,64,'NZ','New Zealand'),
 (162,505,'NI','Nicaragua'),
 (163,227,'NE','Niger'),
 (164,234,'NG','Nigeria'),
 (165,683,'NU','Niue'),
 (166,672,'NF','Norfolk Island'),
 (167,1670,'MP','Northern Mariana Islands'),
 (168,47,'NO','Norway'),
 (169,968,'OM','Oman'),
 (170,92,'PK','Pakistan'),
 (171,680,'PW','Palau'),
 (172,970,'PS','Palestinian Territory, Occupied'),
 (173,507,'PA','Panama'),
 (174,675,'PG','Papua New Guinea'),
 (175,595,'PY','Paraguay'),
 (176,51,'PE','Peru'),
 (177,63,'PH','Philippines'),
 (178,64,'PN','Pitcairn'),
 (179,48,'PL','Poland'),
 (180,351,'PT','Portugal'),
 (181,1787,'PR','Puerto Rico'),
 (182,974,'QA','Qatar'),
 (183,262,'RE','Reunion'),
 (184,40,'RO','Romania'),
 (185,70,'RU','Russian Federation'),
 (186,250,'RW','Rwanda'),
 (187,590,'BL','Saint Barthelemy'),
 (188,290,'SH','Saint Helena'),
 (189,1869,'KN','Saint Kitts and Nevis'),
 (190,1758,'LC','Saint Lucia'),
 (191,590,'MF','Saint Martin'),
 (192,508,'PM','Saint Pierre and Miquelon'),
 (193,1784,'VC','Saint Vincent and the Grenadines'),
 (194,684,'WS','Samoa'),
 (195,378,'SM','San Marino'),
 (196,239,'ST','Sao Tome and Principe'),
 (197,966,'SA','Saudi Arabia'),
 (198,221,'SN','Senegal'),
 (199,381,'RS','Serbia'),
 (200,381,'CS','Serbia and Montenegro'),
 (201,248,'SC','Seychelles'),
 (202,232,'SL','Sierra Leone'),
 (203,65,'SG','Singapore'),
 (204,1,'SX','Sint Maarten'),
 (205,421,'SK','Slovakia'),
 (206,386,'SI','Slovenia'),
 (207,677,'SB','Solomon Islands'),
 (208,252,'SO','Somalia'),
 (209,27,'ZA','South Africa'),
 (210,500,'GS','South Georgia and the South Sandwich Islands'),
 (211,211,'SS','South Sudan'),
 (212,34,'ES','Spain'),
 (213,94,'LK','Sri Lanka'),
 (214,249,'SD','Sudan'),
 (215,597,'SR','Suriname'),
 (216,47,'SJ','Svalbard and Jan Mayen'),
 (217,268,'SZ','Swaziland'),
 (218,46,'SE','Sweden'),
 (219,41,'CH','Switzerland'),
 (220,963,'SY','Syrian Arab Republic'),
 (221,886,'TW','Taiwan, Province of China'),
 (222,992,'TJ','Tajikistan'),
 (223,255,'TZ','Tanzania, United Republic of'),
 (224,66,'TH','Thailand'),
 (225,670,'TL','Timor-Leste'),
 (226,228,'TG','Togo'),
 (227,690,'TK','Tokelau'),
 (228,676,'TO','Tonga'),
 (229,1868,'TT','Trinidad and Tobago'),
 (230,216,'TN','Tunisia'),
 (231,90,'TR','Turkey'),
 (232,7370,'TM','Turkmenistan'),
 (233,1649,'TC','Turks and Caicos Islands'),
 (234,688,'TV','Tuvalu'),
 (235,256,'UG','Uganda'),
 (236,380,'UA','Ukraine'),
 (237,971,'AE','United Arab Emirates'),
 (238,44,'GB','United Kingdom'),
 (239,1,'US','United States'),
 (240,1,'UM','United States Minor Outlying Islands'),
 (241,598,'UY','Uruguay'),
 (242,998,'UZ','Uzbekistan'),
 (243,678,'VU','Vanuatu'),
 (244,58,'VE','Venezuela'),
 (245,84,'VN','Viet Nam'),
 (246,1284,'VG','Virgin Islands, British'),
 (247,1340,'VI','Virgin Islands, U.s.'),
 (248,681,'WF','Wallis and Futuna'),
 (249,212,'EH','Western Sahara'),
 (250,967,'YE','Yemen'),
 (251,260,'ZM','Zambia'),
 (252,263,'ZW','Zimbabwe');
INSERT INTO "league" ("league_id","name","country_id") VALUES (1,'Will-Dickens',3),
 (2,'Torphy and Sons',3),
 (3,'Hintz, Buckridge and Shields',1),
 (4,'Thompson Group',2),
 (5,'Ward, Mohr and Wyman',1),
 (6,'Runolfsdottir, Schmeler and Welch',1);
INSERT INTO "position" ("position_id","name") VALUES (1,' CF'),
 (2,'SS'),
 (3,'LWF'),
 (4,'LMF'),
 (5,'AMF'),
 (6,'RWF'),
 (7,'RMF'),
 (8,'CM'),
 (9,'DM'),
 (10,'LB'),
 (11,'CB'),
 (12,'RB'),
 (13,'GK');
INSERT INTO "PlayerAndPosition" ("player_position_id","position_id","player_id") VALUES (1,12,82),
 (2,8,226),
 (3,6,213),
 (4,3,84),
 (5,3,125),
 (6,12,118),
 (7,10,122),
 (8,8,208),
 (9,8,76),
 (10,3,45),
 (11,10,188),
 (12,5,144),
 (13,7,193),
 (14,13,77),
 (15,10,96),
 (16,13,207),
 (17,5,205),
 (18,9,80),
 (19,2,46),
 (20,6,205),
 (21,12,9),
 (22,1,117),
 (23,7,62),
 (24,8,80),
 (25,1,110),
 (26,5,44),
 (27,6,102),
 (28,4,213),
 (29,10,107),
 (30,7,154),
 (31,12,223),
 (32,3,234),
 (33,5,227),
 (34,13,146),
 (35,2,113),
 (36,10,38),
 (37,2,232),
 (38,2,11),
 (39,13,150),
 (40,11,117),
 (41,7,154),
 (42,5,206),
 (43,4,88),
 (44,6,81),
 (45,11,193),
 (46,10,144),
 (47,4,229),
 (48,12,73),
 (49,2,62),
 (50,13,128),
 (51,11,118),
 (52,7,120),
 (53,10,151),
 (54,2,16),
 (55,12,48),
 (56,2,21),
 (57,2,1),
 (58,11,63),
 (59,7,4),
 (60,10,210),
 (61,1,218),
 (62,7,138),
 (63,9,85),
 (64,3,120),
 (65,7,31),
 (66,8,71),
 (67,9,71),
 (68,8,36),
 (69,4,196),
 (70,12,167),
 (71,13,168),
 (72,11,206),
 (73,3,22),
 (74,4,51),
 (75,6,228),
 (76,6,239),
 (77,11,88),
 (78,2,42),
 (79,1,9),
 (80,6,41),
 (81,8,162),
 (82,12,159),
 (83,7,90),
 (84,5,145),
 (85,1,140),
 (86,10,161),
 (87,7,108),
 (88,11,179),
 (89,6,222),
 (90,3,195),
 (91,7,77),
 (92,7,141),
 (93,12,84),
 (94,3,120),
 (95,5,14),
 (96,2,228),
 (97,7,195),
 (98,1,75),
 (99,8,12),
 (100,9,48),
 (101,11,34),
 (102,11,51),
 (103,11,222),
 (104,5,116),
 (105,10,99),
 (106,12,76),
 (107,10,149),
 (108,7,3),
 (109,1,92),
 (110,9,179),
 (111,8,96),
 (112,1,13),
 (113,11,51),
 (114,1,109),
 (115,6,225),
 (116,8,165),
 (117,9,227),
 (118,3,74),
 (119,1,20),
 (120,1,134),
 (121,13,71),
 (122,8,171),
 (123,1,155),
 (124,3,173),
 (125,9,147),
 (126,12,16),
 (127,7,117),
 (128,3,202),
 (129,10,65),
 (130,1,159),
 (131,9,78),
 (132,1,217),
 (133,2,181),
 (134,4,108),
 (135,12,30),
 (136,13,38),
 (137,5,50),
 (138,7,81),
 (139,2,76),
 (140,5,159),
 (141,3,40),
 (142,7,5),
 (143,7,215),
 (144,1,232),
 (145,9,188),
 (146,5,191),
 (147,10,205),
 (148,12,214),
 (149,6,222),
 (150,9,169),
 (151,7,63),
 (152,11,52),
 (153,13,40),
 (154,3,178),
 (155,3,134),
 (156,7,215),
 (157,9,194),
 (158,6,47),
 (159,9,206),
 (160,2,44),
 (161,4,63),
 (162,6,166),
 (163,12,185),
 (164,10,102),
 (165,12,19),
 (166,9,128),
 (167,12,53),
 (168,13,172),
 (169,8,108),
 (170,12,67),
 (171,13,111),
 (172,4,147),
 (173,4,181),
 (174,2,124),
 (175,12,114),
 (176,13,107),
 (177,3,48),
 (178,7,27),
 (179,11,24),
 (180,5,209),
 (181,2,144),
 (182,4,105),
 (183,12,222),
 (184,9,229),
 (185,2,119),
 (186,9,133),
 (187,8,182),
 (188,10,141),
 (189,4,207),
 (190,6,17),
 (191,3,31),
 (192,8,33),
 (193,9,140),
 (194,7,113),
 (195,7,167),
 (196,2,90),
 (197,12,239),
 (198,11,213),
 (199,3,18),
 (200,5,84),
 (201,6,194),
 (202,9,239),
 (203,8,170),
 (204,7,13),
 (205,7,96),
 (206,4,125),
 (207,8,157),
 (208,3,202),
 (209,10,131),
 (210,9,62),
 (211,3,86),
 (212,1,219),
 (213,9,105),
 (214,5,160),
 (215,2,85),
 (216,3,239),
 (217,9,145),
 (218,8,239),
 (219,8,153),
 (220,1,103),
 (221,10,71),
 (222,10,177),
 (223,2,79),
 (224,11,172),
 (225,13,23),
 (226,12,122),
 (227,2,26),
 (228,6,90),
 (229,8,14),
 (230,7,38),
 (231,6,116),
 (232,5,6),
 (233,6,84),
 (234,9,232),
 (235,2,152),
 (236,2,201),
 (237,1,109),
 (238,3,216),
 (239,1,72),
 (240,13,229);
INSERT INTO "PlayerAndCountry" ("player_country_id","player_id","country_id") VALUES (1,67,77),
 (2,9,232),
 (3,74,172),
 (4,20,92),
 (5,15,137),
 (6,108,11),
 (7,148,92),
 (8,52,177),
 (9,222,64),
 (10,205,171),
 (11,106,163),
 (12,94,144),
 (13,229,85),
 (14,223,60),
 (15,79,105),
 (16,44,67),
 (17,87,237),
 (18,123,155),
 (19,178,48),
 (20,34,105),
 (21,23,134),
 (22,233,81),
 (23,229,136),
 (24,85,154),
 (25,240,109),
 (26,83,57),
 (27,158,222),
 (28,108,240),
 (29,113,133),
 (30,146,206),
 (31,49,162),
 (32,9,10),
 (33,118,165),
 (34,197,60),
 (35,42,127),
 (36,121,50),
 (37,51,110),
 (38,195,79),
 (39,182,164),
 (40,162,206),
 (41,118,219),
 (42,138,212),
 (43,184,88),
 (44,203,134),
 (45,161,220),
 (46,141,62),
 (47,161,214),
 (48,154,250),
 (49,130,59),
 (50,217,108),
 (51,115,134),
 (52,96,115),
 (53,46,11),
 (54,8,81),
 (55,88,31),
 (56,229,103),
 (57,130,48),
 (58,20,112),
 (59,158,245),
 (60,174,4),
 (61,60,93),
 (62,6,114),
 (63,20,55),
 (64,63,196),
 (65,227,26),
 (66,46,205),
 (67,125,58),
 (68,42,44),
 (69,156,190),
 (70,9,60),
 (71,213,81),
 (72,41,176),
 (73,139,7),
 (74,165,210),
 (75,27,11),
 (76,219,236),
 (77,28,83),
 (78,214,13),
 (79,146,102),
 (80,98,214),
 (81,226,13),
 (82,208,15),
 (83,95,20),
 (84,200,198),
 (85,103,71),
 (86,234,197),
 (87,240,28),
 (88,203,248),
 (89,45,91),
 (90,179,202),
 (91,107,5),
 (92,162,132),
 (93,28,243),
 (94,166,126),
 (95,37,144),
 (96,209,181),
 (97,49,164),
 (98,148,18),
 (99,101,118),
 (100,176,167),
 (101,22,36),
 (102,226,66),
 (103,26,31),
 (104,46,87),
 (105,7,76),
 (106,175,56),
 (107,176,137),
 (108,168,226),
 (109,22,116),
 (110,194,177),
 (111,79,244),
 (112,63,228),
 (113,190,129),
 (114,83,82),
 (115,184,94),
 (116,82,137),
 (117,84,220),
 (118,68,234),
 (119,85,73),
 (120,77,194),
 (121,159,35),
 (122,31,85),
 (123,131,218),
 (124,63,34),
 (125,150,5),
 (126,137,41),
 (127,166,173),
 (128,117,232),
 (129,51,7),
 (130,229,151),
 (131,205,157),
 (132,71,72),
 (133,180,215),
 (134,76,45),
 (135,182,77),
 (136,126,113),
 (137,96,104),
 (138,236,89),
 (139,199,124),
 (140,79,27),
 (141,75,5),
 (142,177,77),
 (143,39,86),
 (144,141,186),
 (145,221,197),
 (146,108,190),
 (147,121,124),
 (148,151,237),
 (149,12,3),
 (150,117,1),
 (151,151,136),
 (152,69,231),
 (153,234,123),
 (154,141,166),
 (155,11,64),
 (156,119,34),
 (157,129,79),
 (158,127,3),
 (159,88,125),
 (160,27,126),
 (161,45,231),
 (162,126,246),
 (163,188,116),
 (164,162,131),
 (165,132,99),
 (166,22,31),
 (167,73,27),
 (168,77,36),
 (169,197,36),
 (170,112,23),
 (171,74,79),
 (172,163,145),
 (173,10,163),
 (174,174,206),
 (175,205,36),
 (176,95,182),
 (177,12,159),
 (178,226,158),
 (179,28,71),
 (180,92,2),
 (181,35,228),
 (182,34,6),
 (183,97,44),
 (184,32,236),
 (185,95,239),
 (186,5,232),
 (187,84,211),
 (188,4,247),
 (189,117,37),
 (190,14,232),
 (191,47,138),
 (192,68,117),
 (193,187,57),
 (194,168,123),
 (195,131,169),
 (196,82,245),
 (197,168,222),
 (198,222,169),
 (199,201,186),
 (200,27,161),
 (201,186,53),
 (202,216,242),
 (203,163,192),
 (204,168,116),
 (205,35,82),
 (206,224,101),
 (207,70,222),
 (208,76,36),
 (209,47,63),
 (210,163,165),
 (211,200,49),
 (212,79,146),
 (213,95,165),
 (214,24,164),
 (215,142,48),
 (216,184,143),
 (217,125,141),
 (218,131,140),
 (219,78,209),
 (220,72,227),
 (221,54,194),
 (222,19,246),
 (223,116,56),
 (224,33,212),
 (225,5,206),
 (226,169,82),
 (227,219,154),
 (228,156,99),
 (229,194,59),
 (230,169,132),
 (231,111,163),
 (232,103,182),
 (233,32,100),
 (234,103,137),
 (235,192,120),
 (236,111,128),
 (237,239,79),
 (238,153,39),
 (239,230,124),
 (240,105,1),
 (241,33,3),
 (242,131,132),
 (243,224,70),
 (244,91,249),
 (245,133,72),
 (246,152,106),
 (247,199,147),
 (248,45,186),
 (249,112,66),
 (250,165,167),
 (251,76,31),
 (252,159,218),
 (253,169,18),
 (254,21,214),
 (255,237,243),
 (256,55,88),
 (257,73,28),
 (258,138,238),
 (259,57,194),
 (260,42,71),
 (261,13,168),
 (262,238,181),
 (263,211,110),
 (264,230,224),
 (265,133,97),
 (266,236,69),
 (267,58,87),
 (268,155,218),
 (269,77,159),
 (270,172,126),
 (271,152,35),
 (272,138,168),
 (273,87,87),
 (274,121,6),
 (275,104,2),
 (276,182,245),
 (277,216,146),
 (278,112,182),
 (279,235,38),
 (280,47,103),
 (281,157,8),
 (282,118,102),
 (283,202,223),
 (284,77,231),
 (285,164,149),
 (286,233,150),
 (287,122,178),
 (288,1,93),
 (289,10,62),
 (290,232,178),
 (291,21,109),
 (292,30,73),
 (293,193,80),
 (294,72,176),
 (295,157,195),
 (296,63,202),
 (297,44,17),
 (298,102,144),
 (299,236,31),
 (300,208,51),
 (301,223,200),
 (302,106,173),
 (303,72,179),
 (304,81,247),
 (305,32,168),
 (306,91,26),
 (307,102,249),
 (308,217,94),
 (309,181,19),
 (310,179,130),
 (311,197,78),
 (312,217,220),
 (313,174,6),
 (314,119,157),
 (315,162,31),
 (316,143,242),
 (317,100,100),
 (318,45,24),
 (319,226,121),
 (320,217,236),
 (321,209,136),
 (322,167,37),
 (323,154,173),
 (324,36,131),
 (325,136,17),
 (326,63,9),
 (327,196,225),
 (328,126,131),
 (329,144,127),
 (330,113,34),
 (331,197,113),
 (332,40,193),
 (333,32,235),
 (334,228,105),
 (335,17,227),
 (336,64,122),
 (337,92,142),
 (338,47,130),
 (339,154,54),
 (340,133,6),
 (341,171,203),
 (342,157,86),
 (343,223,186),
 (344,142,238),
 (345,193,141),
 (346,219,189),
 (347,181,74),
 (348,57,98),
 (349,232,26),
 (350,154,188),
 (351,104,134),
 (352,54,55),
 (353,94,180),
 (354,232,103),
 (355,174,132),
 (356,10,213),
 (357,149,92),
 (358,82,119),
 (359,193,49),
 (360,89,3),
 (361,5,181),
 (362,79,151),
 (363,225,221),
 (364,159,127),
 (365,23,168),
 (366,107,26),
 (367,181,94),
 (368,146,171),
 (369,165,65),
 (370,214,217),
 (371,59,93),
 (372,186,99),
 (373,215,127),
 (374,110,242),
 (375,221,53),
 (376,107,80),
 (377,201,38),
 (378,169,65),
 (379,7,120),
 (380,12,94),
 (381,86,91),
 (382,28,84),
 (383,204,85),
 (384,82,118),
 (385,121,243),
 (386,224,229),
 (387,32,144),
 (388,121,178),
 (389,160,154),
 (390,86,160),
 (391,2,186),
 (392,162,242),
 (393,73,233),
 (394,25,49),
 (395,167,6),
 (396,138,202),
 (397,166,142),
 (398,183,11),
 (399,133,96),
 (400,18,12);
INSERT INTO "player" ("player_id","first_name","last_name","age","gender","height","weight","PA","CA","club_id") VALUES (1,'Talbert','Apark',49,'Genderqueer',188.0,'148',185,48,6),
 (2,'Corella','Elix',19,'Genderfluid',236.0,'363',162,111,1),
 (3,'Cherice','Aucock',39,'Bigender',200.0,'304',47,197,3),
 (4,'Jennee','Kelsow',33,'Agender',243.0,'229',47,50,8),
 (5,'Dulcy','Michael',35,'Genderqueer',245.0,'349',94,32,5),
 (6,'Kamillah','Franzel',37,'Female',198.0,'244',24,47,8),
 (7,'Aili','Giuroni',33,'Genderfluid',133.0,'239',150,111,12),
 (8,'Shani','Degoix',41,'Female',251.0,'134',135,132,3),
 (9,'Deirdre','Daughtry',38,'Male',240.0,'321',142,96,6),
 (10,'Bernette','Poynter',40,'Female',104.0,'317',141,13,8),
 (11,'Karylin','Grassot',44,'Male',258.0,'320',165,113,6),
 (12,'Sadie','Ellerman',26,'Agender',285.0,'101',113,45,7),
 (13,'Bernetta','Duckers',30,'Non-binary',145.0,'284',185,167,1),
 (14,'Trefor','Sheringham',24,'Female',254.0,'224',158,189,10),
 (15,'Julie','Duthie',27,'Male',264.0,'302',119,93,2),
 (16,'Charil','O''Dennehy',33,'Genderfluid',210.0,'384',9,75,4),
 (17,'Imojean','Whitwell',19,'Male',259.0,'172',134,21,8),
 (18,'Aveline','Mulmuray',21,'Genderqueer',245.0,'386',141,51,8),
 (19,'Hermina','Lopez',30,'Genderfluid',139.0,'164',165,186,2),
 (20,'Olympia','Gilbey',40,'Genderfluid',184.0,'355',63,61,2),
 (21,'Phebe','Brinkler',34,'Genderfluid',221.0,'131',54,114,5),
 (22,'Bel','Golborn',26,'Genderqueer',244.0,'330',11,144,7),
 (23,'Loralie','Toten',48,'Non-binary',162.0,'371',130,110,11),
 (24,'Sarine','Jakubiak',42,'Male',209.0,'112',128,18,8),
 (25,'Lura','Nockalls',33,'Bigender',126.0,'158',130,62,9),
 (26,'Jessie','Navein',26,'Male',251.0,'178',195,56,6),
 (27,'Tallia','Scemp',27,'Female',141.0,'252',196,81,3),
 (28,'Michal','Willows',28,'Non-binary',296.0,'119',135,47,6),
 (29,'Irwin','Clohessy',20,'Non-binary',124.0,'115',166,144,6),
 (30,'Renie','Marquet',39,'Genderqueer',119.0,'192',161,137,9),
 (31,'Ronnica','Dowling',41,'Female',286.0,'367',173,52,10),
 (32,'Monro','Rignoldes',40,'Non-binary',228.0,'112',5,119,11),
 (33,'Fairlie','Murphey',32,'Non-binary',205.0,'379',47,26,10),
 (34,'Cecile','Wastell',20,'Bigender',208.0,'314',102,92,10),
 (35,'Ingunna','Ionnisian',29,'Bigender',198.0,'346',194,111,4),
 (36,'Kippy','Carbine',25,'Non-binary',284.0,'318',74,121,6),
 (37,'Camey','Dechelle',25,'Bigender',286.0,'376',99,36,1),
 (38,'Merle','Wayt',28,'Non-binary',205.0,'135',61,182,10),
 (39,'Wilmar','Harnwell',43,'Polygender',151.0,'398',106,43,4),
 (40,'Gael','Colaton',32,'Female',257.0,'354',107,95,9),
 (41,'Renard','Bezley',43,'Male',229.0,'226',171,68,11),
 (42,'Rube','Stanfield',40,'Male',189.0,'241',108,133,2),
 (43,'Garry','Harrowell',26,'Non-binary',211.0,'213',138,74,5),
 (44,'Berthe','Castelli',39,'Agender',203.0,'212',82,138,12),
 (45,'Paddie','McLae',35,'Genderqueer',292.0,'257',197,14,2),
 (46,'Barrie','Hasker',25,'Female',123.0,'288',175,63,9),
 (47,'Ryann','Bidmead',46,'Agender',194.0,'368',98,66,5),
 (48,'Fanchette','Lorden',18,'Bigender',101.0,'218',91,74,5),
 (49,'Reilly','Thaim',16,'Female',222.0,'383',132,134,9),
 (50,'Annmaria','Salmoni',15,'Polygender',244.0,'250',72,150,3),
 (51,'Ave','Ronci',19,'Genderqueer',273.0,'344',129,48,4),
 (52,'Roze','Quickfall',20,'Bigender',298.0,'218',93,180,11),
 (53,'Griswold','Paull',34,'Polygender',150.0,'190',119,35,3),
 (54,'Wallis','Baudacci',30,'Non-binary',278.0,'328',153,126,10),
 (55,'Michelle','Weatherhead',18,'Bigender',217.0,'249',197,115,10),
 (56,'Shem','Brophy',41,'Agender',162.0,'242',106,157,12),
 (57,'Stanleigh','Brownbill',28,'Genderqueer',122.0,'334',191,146,4),
 (58,'Charley','Klimontovich',50,'Polygender',126.0,'100',136,13,11),
 (59,'Martguerita','Jarrad',39,'Genderqueer',160.0,'220',18,22,5),
 (60,'Prescott','Land',47,'Polygender',107.0,'354',192,160,9),
 (61,'Daria','Wilne',18,'Genderqueer',231.0,'296',15,45,10),
 (62,'Meta','Symson',29,'Agender',177.0,'108',128,41,10),
 (63,'Kipper','Kennifeck',19,'Non-binary',199.0,'125',45,147,5),
 (64,'Chas','Hoys',17,'Agender',265.0,'186',125,111,4),
 (65,'Petr','Raittie',22,'Female',259.0,'393',192,21,6),
 (66,'Fanni','Hunnicutt',18,'Genderfluid',265.0,'379',64,3,5),
 (67,'Petronella','Westwick',24,'Agender',208.0,'189',147,82,10),
 (68,'Ertha','Moakler',15,'Female',190.0,'190',26,90,5),
 (69,'Selinda','Seage',43,'Agender',143.0,'207',135,98,3),
 (70,'Aubert','Wagner',25,'Female',293.0,'360',17,156,3),
 (71,'Talia','Mettericke',31,'Genderfluid',186.0,'330',193,33,1),
 (72,'Auberta','Donke',44,'Non-binary',260.0,'305',133,3,7),
 (73,'Gabriell','Trunchion',43,'Polygender',233.0,'100',58,189,11),
 (74,'Lorettalorna','Cobbold',30,'Male',282.0,'230',151,141,9),
 (75,'Miquela','Foskett',21,'Genderfluid',238.0,'134',190,44,2),
 (76,'Solly','Handrek',28,'Bigender',248.0,'312',113,162,3),
 (77,'Basia','Boone',33,'Female',147.0,'271',137,23,10),
 (78,'Esmaria','Glaves',26,'Polygender',273.0,'167',175,27,6),
 (79,'Yancy','Baxstare',29,'Bigender',258.0,'223',187,63,2),
 (80,'Antoine','Gerckens',39,'Genderfluid',185.0,'245',103,78,8),
 (81,'Jareb','Bodsworth',31,'Bigender',297.0,'362',56,109,10),
 (82,'Stephie','Pittham',38,'Male',285.0,'315',182,59,2),
 (83,'Leola','Band',16,'Genderfluid',237.0,'196',4,100,1),
 (84,'Gretna','Wey',48,'Non-binary',106.0,'338',101,64,9),
 (85,'Caroline','Keates',39,'Agender',226.0,'165',148,132,5),
 (86,'Brena','Morando',33,'Male',245.0,'224',34,90,1),
 (87,'Zackariah','Laborda',45,'Bigender',234.0,'101',131,128,3),
 (88,'Drusie','Biesty',50,'Genderfluid',216.0,'348',156,99,6),
 (89,'Gypsy','Chaudhry',26,'Polygender',232.0,'362',103,129,7),
 (90,'Raleigh','Kordovani',15,'Polygender',106.0,'188',26,98,12),
 (91,'Philipa','Lesurf',16,'Genderqueer',286.0,'315',148,34,12),
 (92,'Dave','Ramsay',37,'Agender',157.0,'355',127,48,7),
 (93,'Saloma','McGuffie',43,'Bigender',250.0,'204',130,58,11),
 (94,'Niel','Milksop',44,'Genderfluid',270.0,'290',95,150,9),
 (95,'Carlina','Norree',36,'Polygender',152.0,'272',152,52,9),
 (96,'Nealon','Bunstone',22,'Genderfluid',271.0,'108',94,171,10),
 (97,'Garreth','Stouther',47,'Bigender',196.0,'108',30,32,7),
 (98,'Richard','Kehir',22,'Bigender',241.0,'304',29,30,1),
 (99,'Mano','Greatbank',29,'Polygender',135.0,'261',159,73,4),
 (100,'Orsola','Slack',27,'Non-binary',299.0,'157',93,53,8),
 (101,'Randolf','Rait',48,'Polygender',180.0,'136',31,135,1),
 (102,'Evie','Hinz',23,'Polygender',117.0,'320',43,31,2),
 (103,'Devonne','Lindenfeld',48,'Agender',132.0,'229',49,51,9),
 (104,'Janot','Le Pruvost',31,'Female',226.0,'150',178,3,9),
 (105,'Elva','Razzell',34,'Genderqueer',154.0,'274',47,124,10),
 (106,'Cory','Mayler',15,'Bigender',280.0,'292',180,138,7),
 (107,'Mareah','Fortescue',28,'Male',294.0,'144',100,110,11),
 (108,'Coretta','Tesh',15,'Agender',150.0,'121',72,2,2),
 (109,'Cecil','Bew',37,'Non-binary',114.0,'194',10,116,5),
 (110,'Kelsy','Alenov',39,'Male',148.0,'253',56,117,8),
 (111,'Anabelle','Laite',48,'Non-binary',214.0,'146',14,13,6),
 (112,'Benedicta','Micklewright',16,'Bigender',134.0,'200',139,105,10),
 (113,'Aron','Bedow',22,'Bigender',172.0,'228',80,70,7),
 (114,'Ofelia','Murison',39,'Male',196.0,'336',131,19,12),
 (115,'Colene','Hardan',35,'Genderqueer',120.0,'305',11,90,1),
 (116,'Cirilo','Grahlmans',31,'Female',163.0,'395',168,58,3),
 (117,'Muriel','Wadeling',42,'Bigender',280.0,'295',46,172,11),
 (118,'Roana','Brigdale',20,'Agender',129.0,'137',166,1,5),
 (119,'Nikolaos','Turland',46,'Non-binary',283.0,'252',78,87,1),
 (120,'Lorene','Pickthorne',37,'Non-binary',140.0,'382',140,32,3),
 (121,'Merle','Gemnett',25,'Male',245.0,'265',163,55,11),
 (122,'Orsola','Cosley',33,'Genderqueer',219.0,'179',100,184,9),
 (123,'Scotti','Radband',47,'Polygender',163.0,'153',66,188,1),
 (124,'Erich','Offa',36,'Female',231.0,'304',124,67,9),
 (125,'Kincaid','Shyram',27,'Agender',275.0,'136',121,186,10),
 (126,'Willy','Obell',20,'Polygender',136.0,'209',103,200,2),
 (127,'Morey','Lande',26,'Polygender',104.0,'125',47,200,5),
 (128,'Orly','Harrower',34,'Genderqueer',193.0,'121',178,9,5),
 (129,'Farah','Hasell',16,'Polygender',156.0,'294',122,105,11),
 (130,'Catlaina','Kuban',36,'Female',251.0,'158',3,46,1),
 (131,'Jamil','Bleakley',39,'Bigender',101.0,'301',90,161,2),
 (132,'Renaud','Shepland',34,'Polygender',195.0,'266',36,195,11),
 (133,'Oriana','McGaugey',49,'Female',166.0,'394',144,73,11),
 (134,'Humfrey','Grammer',33,'Female',274.0,'260',46,96,5),
 (135,'Byron','Cardenas',37,'Agender',154.0,'183',100,93,7),
 (136,'Isak','Sales',21,'Genderfluid',294.0,'205',46,120,10),
 (137,'Antonino','Malham',44,'Agender',132.0,'353',151,134,3),
 (138,'Cheri','Houselee',33,'Genderqueer',186.0,'359',95,114,7),
 (139,'Nertie','Patroni',32,'Female',134.0,'192',187,105,2),
 (140,'Bethanne','Hatrick',37,'Polygender',238.0,'167',124,68,12),
 (141,'Gabbie','Tissell',23,'Polygender',134.0,'100',61,1,4),
 (142,'Moira','Suero',47,'Non-binary',269.0,'303',48,53,10),
 (143,'Eran','Girodier',49,'Agender',103.0,'127',81,54,10),
 (144,'Garald','Swigg',28,'Male',223.0,'257',6,175,10),
 (145,'Annalee','Verrell',43,'Female',240.0,'213',56,168,3),
 (146,'Kelly','Orteaux',18,'Male',231.0,'262',176,58,2),
 (147,'Breanne','Jahndel',30,'Bigender',148.0,'283',140,170,6),
 (148,'Richardo','Sheppard',26,'Bigender',166.0,'269',3,181,7),
 (149,'Mikaela','Andrzejowski',40,'Genderqueer',236.0,'281',114,163,9),
 (150,'Sileas','Coling',45,'Polygender',238.0,'233',161,15,2),
 (151,'Silvain','Marthen',42,'Bigender',259.0,'157',5,47,5),
 (152,'Curtis','Wombwell',39,'Genderfluid',286.0,'269',3,169,5),
 (153,'Madge','Balas',22,'Polygender',278.0,'335',180,19,6),
 (154,'Effie','Bartolomeoni',19,'Polygender',253.0,'318',107,46,6),
 (155,'Mab','Mansel',45,'Agender',204.0,'255',125,190,6),
 (156,'Stu','Bowbrick',49,'Genderqueer',165.0,'386',125,143,12),
 (157,'Drew','Jouanot',34,'Male',291.0,'331',193,103,5),
 (158,'Claudell','Cornall',38,'Agender',163.0,'104',183,44,11),
 (159,'Dene','Reinmar',41,'Genderfluid',108.0,'291',144,52,11),
 (160,'Henrieta','Dyhouse',37,'Genderfluid',184.0,'123',16,20,9),
 (161,'Daloris','Tassaker',29,'Female',185.0,'229',85,146,2),
 (162,'Ellynn','Sprague',45,'Agender',126.0,'338',175,132,2),
 (163,'Alix','Volk',39,'Female',153.0,'336',195,164,11),
 (164,'Royal','Lind',36,'Genderfluid',223.0,'329',72,116,3),
 (165,'Paxton','Willcott',35,'Agender',281.0,'388',86,166,12),
 (166,'Nolan','Chavey',42,'Genderfluid',163.0,'251',15,7,4),
 (167,'Mechelle','Noton',49,'Genderfluid',264.0,'397',28,15,5),
 (168,'Sari','Spender',24,'Non-binary',164.0,'118',89,85,10),
 (169,'Chickie','Hrishchenko',30,'Genderfluid',230.0,'197',51,104,6),
 (170,'Nobie','Paulillo',16,'Female',215.0,'261',12,22,6),
 (171,'Terry','Greenhough',17,'Agender',240.0,'288',169,155,6),
 (172,'Irene','MacKereth',15,'Male',187.0,'171',144,152,10),
 (173,'Burty','Agron',35,'Agender',139.0,'151',115,132,3),
 (174,'Harlin','Letchmore',38,'Bigender',226.0,'106',88,45,8),
 (175,'Debby','Gregon',37,'Polygender',122.0,'145',161,155,5),
 (176,'Olivette','Barthorpe',41,'Agender',142.0,'250',78,141,12),
 (177,'Cathleen','Attard',44,'Male',103.0,'359',195,199,2),
 (178,'Noak','Daymont',45,'Genderqueer',195.0,'249',93,29,8),
 (179,'Nicole','Quilty',30,'Male',296.0,'340',26,193,9),
 (180,'Saloma','Galfour',42,'Non-binary',208.0,'227',106,29,5),
 (181,'Renard','Willshee',26,'Polygender',196.0,'212',104,121,5),
 (182,'Emory','O''Shea',27,'Polygender',269.0,'317',16,112,7),
 (183,'Rosalinde','Campanelle',44,'Non-binary',196.0,'381',105,134,12),
 (184,'Odilia','Dagworthy',25,'Genderfluid',207.0,'279',141,163,7),
 (185,'Dottie','Mangin',26,'Female',112.0,'281',151,43,2),
 (186,'Batholomew','Doumer',27,'Female',104.0,'363',176,45,8),
 (187,'Heather','Gouny',17,'Agender',237.0,'280',168,67,2),
 (188,'Averill','Kohrs',31,'Non-binary',140.0,'139',33,126,11),
 (189,'Riobard','Gorman',19,'Genderqueer',246.0,'302',95,88,6),
 (190,'Wallas','Gowrich',16,'Agender',202.0,'179',15,174,6),
 (191,'Annis','Wadham',24,'Female',147.0,'242',125,55,2),
 (192,'Moe','Bauduccio',34,'Male',130.0,'112',93,85,9),
 (193,'Meris','Pancast',36,'Polygender',280.0,'281',87,50,2),
 (194,'Melosa','Dailly',39,'Male',181.0,'102',40,30,8),
 (195,'Athene','Heinonen',15,'Agender',167.0,'110',31,60,9),
 (196,'Vivian','Starrs',32,'Female',130.0,'288',91,65,6),
 (197,'Fraser','Kinzel',45,'Polygender',280.0,'159',67,132,3),
 (198,'Vernen','Lambourne',45,'Bigender',157.0,'363',165,174,11),
 (199,'Bernadina','Pavek',31,'Genderqueer',288.0,'146',140,82,6),
 (200,'Annette','Willoughey',29,'Female',135.0,'266',129,198,7),
 (201,'Cosette','Sifflett',49,'Polygender',298.0,'127',174,137,12),
 (202,'Michal','Ridger',25,'Male',102.0,'336',25,39,12),
 (203,'Garald','Hurt',25,'Male',230.0,'152',137,138,7),
 (204,'Carol-jean','Rodrig',46,'Genderqueer',245.0,'273',86,120,7),
 (205,'Norris','Kupke',20,'Genderqueer',105.0,'340',174,20,3),
 (206,'Frederica','Pentycost',16,'Polygender',168.0,'297',35,138,8),
 (207,'Lyon','Hastwall',40,'Bigender',114.0,'211',73,52,9),
 (208,'Myrtia','Povlsen',18,'Genderfluid',162.0,'390',161,195,5),
 (209,'Collie','Mackness',33,'Polygender',201.0,'389',161,142,8),
 (210,'Nester','Lockyer',27,'Genderfluid',148.0,'107',128,104,9),
 (211,'Katerine','Woodfield',40,'Agender',102.0,'345',55,129,4),
 (212,'Aldridge','Lidden',28,'Non-binary',103.0,'234',19,102,5),
 (213,'Leanna','Gander',34,'Polygender',191.0,'256',173,149,3),
 (214,'Marlee','Weal',27,'Male',257.0,'381',151,100,6),
 (215,'Rog','Watton',46,'Genderfluid',257.0,'196',144,145,12),
 (216,'Allin','Pietasch',25,'Agender',285.0,'353',181,34,8),
 (217,'Cassandra','Greenstead',42,'Non-binary',216.0,'146',35,62,10),
 (218,'Witty','Bows',15,'Female',171.0,'387',40,102,2),
 (219,'Earlie','La Croce',30,'Genderqueer',192.0,'248',30,179,10),
 (220,'Tani','Paxton',21,'Polygender',256.0,'118',110,103,10),
 (221,'Amelita','Juarez',34,'Non-binary',174.0,'175',60,59,12),
 (222,'Tristam','Sirmond',43,'Male',264.0,'195',75,36,11),
 (223,'Shaughn','Blakeney',15,'Polygender',220.0,'223',112,87,4),
 (224,'Brinn','Ferneyhough',39,'Agender',181.0,'106',52,19,1),
 (225,'Dalton','Mildner',40,'Female',269.0,'311',128,126,11),
 (226,'Art','Mungin',40,'Genderqueer',186.0,'266',143,188,1),
 (227,'Jo-ann','Veldens',46,'Bigender',267.0,'130',25,135,4),
 (228,'Emelita','Leigh',18,'Female',196.0,'209',111,173,10),
 (229,'Sonnie','Ofer',41,'Non-binary',179.0,'202',125,84,10),
 (230,'Marta','Greatland',18,'Agender',281.0,'377',14,17,9),
 (231,'Briant','Dufty',47,'Genderfluid',257.0,'379',38,155,2),
 (232,'Corbet','Lowde',36,'Genderqueer',154.0,'366',29,154,6),
 (233,'Shanan','Meco',30,'Non-binary',184.0,'183',179,59,8),
 (234,'Valene','Liveley',17,'Non-binary',226.0,'228',197,157,10),
 (235,'Noble','Ledwich',39,'Agender',291.0,'339',191,32,11),
 (236,'Edgar','Lyven',24,'Agender',134.0,'249',57,47,12),
 (237,'Janella','Gorton',26,'Polygender',289.0,'181',21,56,3),
 (238,'Keeley','de Banke',36,'Male',120.0,'195',73,1,6),
 (239,'Dolli','Strase',49,'Bigender',127.0,'357',173,76,10),
 (240,'Mano','Simnell',50,'Genderqueer',112.0,'162',73,142,11);
INSERT INTO "club" ("club_id","name","stadium","city","form_date","league_id") VALUES (1,'Lebsack, Durgan and Beahan','Schowalter-Watsica','Sarreguemines','1/22/1999',5),
 (2,'Blick-Quigley','Kshlerin, Dickinson and Balistreri','Jiapeng','10/25/2000',3),
 (3,'Maggio, Boyer and Rolfson','Jenkins LLC','Côn Sơn','1/18/2009',2),
 (4,'Vandervort, Dickens and Waelchi','Turcotte-Mayer','Lyuban’','9/15/2002',6),
 (5,'Howell, Stiedemann and O''Connell','Dickens, Gerlach and Kemmer','Flora','12/15/1994',1),
 (6,'Hartmann Inc','Erdman-Rice','Trnovska Vas','2/21/1997',2),
 (7,'Collier and Sons','Kunde and Sons','Presidente Epitácio','8/2/2006',1),
 (8,'Hauck and Sons','Olson-Heidenreich','Gharyan','7/4/2006',1),
 (9,'Kuhn and Sons','Turcotte and Sons','Sadovo','3/12/2002',3),
 (10,'Boyer, Krajcik and Ondricka','Collins, Reynolds and Turner','Salaspils','8/25/2015',2),
 (11,'Jacobs Group','Cremin-Zieme','Krajan Gajihan','6/3/1997',2),
 (12,'Schaefer, Harvey and Turner','Corwin Inc','Zhihe','2/26/2017',6);
COMMIT;
