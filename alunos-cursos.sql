-- create a table
CREATE TABLE Alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL,
    cidade TEXT NOT NULL
);
INSERT INTO Alunos VALUES (1, 'Ana', 20, 'Brasilia');
INSERT INTO Alunos VALUES (2, 'Bruno', 22, 'Goiania');
INSERT INTO Alunos VALUES (3, 'Carlos', 19, 'Brasilia');
INSERT INTO Alunos VALUES (4, 'Daniela', 21, 'Taguatinga');
INSERT INTO Alunos VALUES (5, 'Eduardo', 23, 'Ceilandia');
INSERT INTO Alunos VALUES (6, 'Fernanda', 20, 'Brasilia');
INSERT INTO Alunos VALUES (7, 'Gabriel', 24, 'Samambaia');
INSERT INTO Alunos VALUES (8, 'Julia', 19, 'Guara');
INSERT INTO Alunos VALUES (9, 'Lucas', 22, 'Brasilia');
INSERT INTO Alunos VALUES (10, 'Mariana', 21, 'Planaltina');
CREATE TABLE Cursos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    duracao INTEGER NOT NULL,
    modalidade TEXT NOT NULL
);
INSERT INTO Cursos VALUES (1, 'Administracao', 4, 'Presencial');
INSERT INTO Cursos VALUES (2, 'Direito', 5, 'Presencial');
INSERT INTO Cursos VALUES (3, 'Engenharia Civil', 5, 'Presencial');
INSERT INTO Cursos VALUES (4, 'Pedagogia', 4, 'EAD');
INSERT INTO Cursos VALUES (5, 'Sistemas de Informacao', 4, 'EAD');
INSERT INTO Cursos VALUES (6, 'Medicina', 5, 'PRESENCIAL');
INSERT INTO Cursos VALUES (7, 'Odotologia', 4, 'EAD');
INSERT INTO Cursos VALUES (8, 'Psicologia', 5, 'PRESENCIAL');
INSERT INTO Cursos VALUES (9, 'Tecnologia da Informacao', 4, 'EAD');
INSERT INTO Cursos VALUES (10, 'Enfermagem', 5, 'PRESENCIAL');

SELECT * FROM Alunos
LIMIT 2;
SELECT * FROM Cursos
LIMIT 2;
