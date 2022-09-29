@players
INSERT INTO players (nick,email,password) VALUES ("Fabiplak","email@gmail.com", "fab123")
INSERT INTO players (nick,email,password) VALUES ("Tcz","tcz@gmail.com", "tcz123")
INSERT INTO players (nick,email,password) VALUES ("Kajdafelek","kaj@gmail.com", "kaj123")

@Villages_recources
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 1, 1200)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 2, 1400)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 3, 1700)

INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 1, 1201)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 2, 1401)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 3, 1701)

INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 1, 1202)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 2, 1402)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 3, 1702) 

@Villages
INSERT INTO villages (name, x, y, players_id) VALUES ("wioska", 20, 30, 1)
INSERT INTO villages (name, x, y, players_id) VALUES ("wioseczka", 40, 60, 2)
INSERT INTO villages (name, x, y, players_id) VALUES ("wiosunia", 60, 120, 3)

@troops
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("lucznik", "posiada łuk", 0,15,4)
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("miecznik", "posiada miecz", 15,0,6)
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("kusznik", "lepszy łucznik", 0,25,5)
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("rycerz", "najlepsza jednostka",30,0,20)

@troops2

INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (1, 1, 50)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (1, 2, 70)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (1, 3, 20)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 4, 30) 


INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (2, 1, 20)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (2, 2, 50)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (2, 3, 70)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 4, 40) 


INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 1, 10)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 2, 40)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 3, 70)
INSERT INTO villages_has_troops (villages_id, troops_id, value) VALUES (3, 2, 20) 
 
@resources
INSERT INTO resources (name, description) VALUES ("drewno", "podstawa imperium bez tego nic nie zrobisz")
INSERT INTO resources (name, description) VALUES ("glina", "no z tego juz mozesz kombinowac ale nie polecam za dużo jedynie do garnków")
INSERT INTO resources (name, description) VALUES ("zelazo", "żelazo najmocniejsze wiadomo zawsze warto mieć zwłaszcza do jednostek")

@buildings
INSERT INTO buildings (name) VALUES ("dół z glina")
INSERT INTO buildings (name) VALUES ("huta żelaza")
INSERT INTO buildings (name) VALUES ("chata drwala")

@buildings2
INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (1, 2)
INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (1, 2)

INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (1, 2)
INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (1, 3)

INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (3, 3)
INSERT INTO villages_has_buildings (villages_id, buildings_id) VALUES (3, 2)

@login(zap.2)
FROM player SELECT * WHERE password LIKE "fab123" AND email LIKE "email@gmail.com"

@zasoby(zap.1)
SELECT players.*, villages.name, resources.name, villages_has_resources.value FROM players 
JOIN villages ON players.id=villages.players_id 
JOIN villages_has_resources ON villages.id=villages_has_resources.villages_id
JOIN resources ON villages_has_resources.resources_id=resources.id
WHERE players.id=2;

@żołnierze(zap.3)
SELECT players.*, villages.name, troops.name, villages_has_troops.value FROM players 
JOIN villages ON players.id=villages.players_id 
JOIN villages_has_troops ON villages.id=villages_has_troops.villages_id
JOIN troops ON villages_has_troops.troops_id=troops.id
WHERE players.id=1;

@budynki
SELECT players.*, villages.name, buildings.name FROM players 
JOIN villages ON players.id=villages.players_id 
JOIN villages_has_buildings ON villages.id=villages_has_buildings.villages_id
JOIN buildings ON villages_has_buildings.buildings_id=buildings.id
WHERE players.id=3;


