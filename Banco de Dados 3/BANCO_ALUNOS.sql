CREATE DATABASE ALUNOS
go

USE ALUNOS
GO

CREATE TABLE TB_ALUNOS(
	CODALUNO INT IDENTITY PRIMARY KEY, 
	NOME VARCHAR(40) NOT NULL,
	CURSO VARCHAR(20) NOT NULL,
	TURMA VARCHAR(30) NOT NULL,
	MENSALIDADE DECIMAL(10,2) NOT NULL,
	DATANASC DATETIME
)
GO

INSERT INTO TB_ALUNOS VALUES ('Pedro Sanches','Eletrônica','ELE1AN',250.00,'01/12/1980')
GO
INSERT INTO TB_ALUNOS VALUES ('Selma Bartoretto','Eletrônica','ELE1AN',250.00,'16/05/1985')
GO
INSERT INTO TB_ALUNOS VALUES ('Julio Barros','Informática','INF1AN',250.00,'16/05/1982')
GO
INSERT INTO TB_ALUNOS VALUES ('Sandra Spec','Informática','INF2AN',150.00,'03/04/2000')
GO
INSERT INTO TB_ALUNOS VALUES ('Debora Fasano','Edificações','EDF3BN',180.00,'17/06/2002')
GO
INSERT INTO TB_ALUNOS VALUES ('Augusto Romano','Redes','IRD1AM',180.00,'22/08/2004')
GO
INSERT INTO TB_ALUNOS VALUES ('Leticia Fontes','Redes','IRD2AT',200.00,'09/03/2005')
GO
INSERT INTO TB_ALUNOS VALUES ('Rodrigo Santana','Edificações','EDF3BN',150.00,'02/02/2003')
GO
INSERT INTO TB_ALUNOS VALUES ('Jorge Salgueiro','Eletrônica','ELE2AN',200.00,'07/09/1985')
GO
INSERT INTO TB_ALUNOS VALUES ('Joana Prado','Eletrônica','ELE2AN',200.00,'12/07/1987')
GO
INSERT INTO TB_ALUNOS VALUES ('Carla Zulmeto','Informática','INF1AN',190.00,'05/08/1984')
GO
INSERT INTO TB_ALUNOS VALUES ('Jeferson Oliveira','Informática','INF1AN',220.00,'02/09/1990')
GO
INSERT INTO TB_ALUNOS VALUES ('Carlos Torres','Redes','IRD1AM',220.00,'03/09/2004')
GO
INSERT INTO TB_ALUNOS VALUES ('Gerson Brandao','Redes','IRD1AM',220.00,'02/09/2004')
GO
INSERT INTO TB_ALUNOS VALUES ('Juliana Marques','Redes','IRD2AT',180.00,'15/10/2005')
GO

SELECT * FROM TB_ALUNOS
DROP DATABASE ALUNOS

--EXERCICIOS

SET DATEFORMAT DMY;

SELECT GETDATE ();

SELECT GETDATE () AS DATA_DE_HOJE;

SELECT GETDATE () + 45;

SELECT DAY (GETDATE ()) AS DIA_DE_HOJE;

SELECT MONTH (GETDATE ()) AS MES_CORRENTE;

SELECT YEAR (GETDATE ()) AS ANO_CORRENTE;

SELECT DAY(GETDATE ()) AS DIA, MONTH(GETDATE ()) AS MES, YEAR(GETDATE ()) AS ANO;

SELECT CURRENT_TIMESTAMP


--exercicio 15

SELECT TURMA, CURSO, SUM(MENSALIDADE) AS TOTAL_MENS FROM TB_ALUNOS
GROUP BY TURMA, CURSO ORDER BY TOTAL_MENS

SELECT TURMA, CURSO, SUM(MENSALIDADE) AS TOTAL_MENS FROM TB_ALUNOS
GROUP BY TURMA, CURSO HAVING SUM(MENSALIDADE) >380 ORDER BY TOTAL_MENS;

SELECT AVG(MENSALIDADE) AS Media_Mensalidade_Eletronica from TB_ALUNOS WHERE CURSO='Eletrônica';

SELECT AVG(MENSALIDADE) AS Media_Mensalidade_Edificacoes from TB_ALUNOS WHERE
CURSO='Edificações';

SELECT COUNT (*) AS QTDE_ALUNOS FROM TB_ALUNOS;

SELECT COUNT(DISTINCT TURMA) FROM TB_ALUNOS;

SELECT COUNT(DISTINCT CURSO) FROM TB_ALUNOS;

SELECT CURRENT_TIMESTAMP