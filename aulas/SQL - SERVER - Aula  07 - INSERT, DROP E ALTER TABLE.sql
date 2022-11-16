CREATE TABLE AlunosxTurmas 
(
	ID_TURMA INT NOT NULL,
	ID_ALUNO INT NOT NULL,
	VALOR NUMERIC(13,2) NOT NULL,
	VALOR_DESCONTO NUMERIC(3,2),
	DATA_CADASTRO DATETIME NOT NULL,
	LOGIN_CADASTRO VARCHAR(15) NOT NULL
);

ALTER TABLE AlunosxTurmas
	ADD CONSTRAINT FK_TURMAS FOREIGN KEY (ID_TURMA) REFERENCES Turmas(ID_TURMA);

ALTER TABLE AlunosxTurmas
	ADD CONSTRAINT FK_ALUNO FOREIGN KEY (ID_ALUNO) REFERENCES Alunos(ID_ALUNO);

ALTER TABLE Turmas
DROP CONSTRAINT FK_ALUNOS;

ALTER TABLE Turmas
DROP COLUMN ID_ALUNO;

ALTER TABLE Turmas
DROP COLUMN VALOR_TURMA;

ALTER TABLE Turmas
DROP COLUMN DESCONTO;

INSERT INTO Turmas
(ID_TURMA, ID_CURSO, DATA_INICIO, DATA_TERMINO, DATA_CADASTRO, LOGIN_CADASTRO)
VALUES
(1,1, '11/16/2022', '12/26/2022', getdate(), 'alessandro');

SELECT * FROM Turmas

INSERT INTO AlunosxTurmas
(ID_TURMA, ID_ALUNO, VALOR, VALOR_DESCONTO, DATA_CADASTRO, LOGIN_CADASTRO)
VALUES
(1,10, 1200, 0.1, getdate(), 'alessandro');


SELECT * FROM AlunosxTurmas