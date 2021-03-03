--DML - DATA MANIPULATION LANGUAGE
USE SENAI_HROADS_TARDE;

INSERT INTO TiposHabilidades (Tipo)
VALUES						 ('Ataque'),
							 ('Defesa'),
							 ('Cura'),
							 ('Magia');

INSERT INTO Habilidades (Nome, IdTipo)
VALUES					('Lan�a Mortal', 1),
						('Escudo Supremo', 2),
						('Recuperar Vida', 3);

INSERT INTO Classes (Nome)
VALUES				('B�rbaro'),
					('Cruzado'),
					('Ca�ador de Dem�nios'),
					('Monge'),
					('Necromante'),
					('Feiticeiro'),
					('Arcanista');

INSERT INTO ClassesHabilidades (IdClasse,IdHabilidade)
VALUES							(1,1),
								(1,2),
								(2,2),
								(3,1),
								(4,2),
								(4,3),
								(5,NULL),
								(6,3),
								(7,NULL);

								select * from Personagens



INSERT INTO Personagens (IdClasse, Nome, CapacidadeMaxVida, CapacidadeMaxMana, DataAtualiz, DataCriacao)
VALUES					(1,'DeuBug',100 , 80, GETDATE(), '18/01/2019' ),
						(2,'BitBug',70 , 100, GETDATE(), '17/03/2016'),
						(7,'Fer8',75 , 60, GETDATE(), '18/03/2018');