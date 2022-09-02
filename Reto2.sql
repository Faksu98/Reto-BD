CREATE DATABASE Cat_Cafe;

USE Cat_Cafe;

/*Nombre de los gatos - Apodo/Null - Vino acompañada/Null - Peso/en TRUE o FLASE - Jubilarse*/
CREATE TABLE datos_gatetes(
    id_gato INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(20) NOT NULL,
    Apodo VARCHAR (20),
    Edad INT NOT NULL,
    Peso FLOAT NOT NULL,
    Gustos VARCHAR (30),
    Color_Pelaje VARCHAR (30),
    Color_Ojos VARCHAR (30),
    PRIMARY KEY (id_gato)
);

INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Rocket", 3, 3,"dormir mucho","blanco","celeste");
INSERT INTO datos_gatetes (Nombre,Apodo,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Pinto", "pin", 5, 3.5,"los mimos","naranja","amarillo con verde");
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Sunny", 2, 5,"jugar con pelotitas","negro","amarillentos");
INSERT INTO datos_gatetes (Nombre,Apodo,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Emelia", "Emeli", 5, 4.4,"reposar donde hay sol","gris con negro","amarillentos");
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Nikki", 4, 4.3,"le gusta estar con ricochet","gris","verde claro");
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Ricochet", 4, 4.7,"los lugares altos","blanco con gris","celeste");
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Onyx", 7, 3.3,"ama la comida","naranja con marron","amarillentos");
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Seiko", 2, 3.7,"dormir junto a otros gatos","blanco con gris","verdosos");
INSERT INTO datos_gatetes (Nombre,Apodo,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Nathan", "Ninja Nate", 7, 4.5,"esconderse","negro","amarillentos");

ALTER TABLE datos_gatetes ALTER COLUMN Apodo SET DEFAULT 'no tiene apodo';
UPDATE datos_gatetes SET Apodo = DEFAULT WHERE Apodo is null;

ALTER TABLE datos_gatetes MODIFY COLUMN apodo VARCHAR (20) NOT NULL;
ALTER TABLE datos_gatetes ALTER COLUMN apodo SET DEFAULT 'no tiene apodo';

ALTER TABLE datos_gatetes ADD Vino_con VARCHAR (20);

UPDATE datos_gatetes SET Vino_con ='Sunny' WHERE nombre ='Rocket';
UPDATE datos_gatetes SET Vino_con ='Rocket' WHERE nombre ='Sunny';
UPDATE datos_gatetes SET Vino_con ='Seiko' WHERE nombre ='Emelia';
UPDATE datos_gatetes SET Vino_con ='Emelia' WHERE nombre ='Seiko';
UPDATE datos_gatetes SET Vino_con = 'vino solo' WHERE Vino_con is null;


ALTER TABLE datos_gatetes ALTER COLUMN Vino_con SET DEFAULT 'vino solo';


ALTER TABLE datos_gatetes ADD COLUMN Dieta BOOLEAN AFTER peso ;
UPDATE datos_gatetes SET Dieta = TRUE WHERE Dieta IS NULL;
ALTER TABLE datos_gatetes MODIFY COLUMN Dieta BOOLEAN NOT NULL;
ALTER TABLE datos_gatetes ALTER COLUMN Dieta SET DEFAULT (peso>4);
UPDATE datos_gatetes SET Dieta = DEFAULT ;


ALTER TABLE datos_gatetes ADD COLUMN Anios_para_jubilarse INT AFTER edad ;
UPDATE datos_gatetes SET Anios_para_jubilarse = 11 - edad WHERE Anios_para_jubilarse IS NULL;
ALTER TABLE datos_gatetes MODIFY COLUMN Anios_para_jubilarse INT NOT NULL;
ALTER TABLE datos_gatetes ALTER COLUMN Anios_para_jubilarse SET DEFAULT (11-edad);
UPDATE datos_gatetes SET Anios_para_jubilarse = DEFAULT ;


INSERT INTO datos_gatetes (Nombre,Apodo,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Toffee", "Tofisito", 4, 3.4,"jugar y estar solo","blanco con gris","verdosos")
INSERT INTO datos_gatetes (Nombre,Edad,Peso,Gustos,Color_Pelaje,Color_Ojos) VALUES ("Chucky", 10, 4.3,"dormir y caminar","naranja con blanco","amarillentos");