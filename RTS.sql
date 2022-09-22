@players
INSERT INTO players (nick,email,password) VALUES (Fabiplak, email@gmail.com, fab123)
INSERT INTO players (nick,email,password) VALUES (Tcz, tcz@gmail.com, tcz123)
INSERT INTO players (nick,email,password) VALUES (Kajdafelek, kaj@gmail.com, kaj123)

@Villages
INSERT INTO villages (name, x, y, players_id) VALUES (wioska, 20, 30, 5)
INSERT INTO villages (name, x, y, players_id) VALUES (wioseczka, 40, 60, 10)
INSERT INTO villages (name, x, y, players_id) VALUES (wiosunia, 60, 120, 15)

@troops
INSERT INTO troops (name, description, damage, distance damage, defence) VALUES (lucznik, posiada łuk, 0,15,4)
INSERT INTO troops (name, description, damage, distance damage, defence) VALUES (miecznik, posiada miecz, 15,0,6)
INSERT INTO troops (name, description, damage, distance damage, defence) VALUES (kusznik, lepszy łucznik, 0,25,5)
INSERT INTO troops (name, description, damage, distance damage, defence) VALUES (rycerz, najlepsza jednostka,30,0,20)

@resources
INSERT INTO resources (name, description) VALUES (drewno, podstawa imperium bez tego nic nie zrobisz)
INSERT INTO resources (name, description) VALUES (glina, no z tego juz mozesz kombinowac ale nie polecam za dużo jedynie do garnków)
INSERT INTO resources (name, description) VALUES (zelazo, żelazo najmocniejsze wiadomo zawsze warto mieć zwłaszcza do jednostek)

@buildings
INSERT INTO buildings (name) VALUES (dół z glina)
INSERT INTO buildings (name) VALUES (huta żelaza)
INSERT INTO buildings (name) VALUES (chata drwala)

@login
FROM player SELECT id WHERE password LIKE "fab123" AND email LIKE "email@gmail.com"