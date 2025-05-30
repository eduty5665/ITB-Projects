USE MASTER IF EXISTS(
SELECT * FROM SYS.databases WHERE NAME = 'PET_SHOP_2B')
DROP DATABASE PET_SHOP_2B
GO

--COMANDO QUE CRIA O BANCO DE DADOS
CREATE DATABASE PET_SHOP_2B
GO

--COMANDO PARA USAR O BANCO
USE PET_SHOP_2B
GO

--CRIAR TABELA NO BANCO
CREATE TABLE RACA(
  ID_RACA INT PRIMARY KEY IDENTITY(1,1),
  NOME_RACA VARCHAR (100) NOT NULL)
  GO

  --INSERINDO VALOR NA TABELA/COMANDOS PARA INSERIR
  --EXEMPLOS - PROF
  INSERT INTO RACA(NOME_RACA) VALUES ('PASTOR ALEM�O')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('YORKSHIRE')
  GO
  --EXEMPLOS - EDUTY
  INSERT INTO RACA(NOME_RACA) VALUES ('BULDOG')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('POODLE')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('PUG')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('HUSKY SIBERIANO')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('DALMATA')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('PINSCHER')
  GO
  INSERT INTO RACA(NOME_RACA) VALUES ('GOLDEN')
  GO

  CREATE TABLE ANIMAL(
  ID_ANIMAL INT PRIMARY KEY IDENTITY(1,1),
  NOME_ANIMAL VARCHAR(100) NOT NULL,
  DT_NASC DATETIME NULL,
  PORTE VARCHAR (50),
  SEXO_ANIMAL CHAR(1),
  ID_RACA_FK INT,
  FOREIGN KEY(ID_RACA_FK)
  REFERENCES RACA(ID_RACA),
  FOREIGN KEY(ID_CLI_FK)
  REFERENCES CLIENTE(ID_CLI))
  GO

  INSERT INTO ANIMAL
  VALUES('REXONA', GETDATE(),'PEQUENO', 'M', 2)
  GO
  INSERT INTO ANIMAL
  VALUES('TICO TICO', GETDATE(),'M�DIO', 'M', 4)
  GO
  INSERT INTO ANIMAL
  VALUES('LEOZIN', GETDATE(),'GRANDE', 'F', 3)
  GO
  INSERT INTO ANIMAL
  VALUES('RENAN', GETDATE(),'M�DIO', 'F', 8)
  GO
  INSERT INTO ANIMAL
  VALUES('TOTTO', GETDATE(),'PEQUENO', 'M', 9)
  GO
  INSERT INTO ANIMAL
  VALUES('DIMDIM', GETDATE(),'PEQUENO', 'M', 9)
  GO
  INSERT INTO ANIMAL
  VALUES('LILI', GETDATE(),'PEQUENO', 'F', 9)
  GO
  
  SELECT * FROM ANIMAL
  GO

    --DELETAR UMA LINHA DA TABELA
  DELETE FROM ANIMAL 
  WHERE ID_ANIMAL = 5
  GO

  --PESQUISA NA TABELA; SELECIONA OS DADOS/SELECIONA TODOS OS CAMPOS
  SELECT * FROM RACA
  WHERE ID_RACA = 2
  GO

  --PESQUISA VARIOS CAMPOS ESPECIFICOS, VC PODE ESCOLHER
  SELECT ID_RACA, NOME_RACA FROM RACA
  WHERE ID_RACA = 2
  GO

  --EXCLUI A TABELA INTEIRA
 -- DROP TABLE RACA
  GO
  --DROP TABLE ANIMAL
  GO
  --DELETAR DADOS
 -- DELETE FROM RACA
  GO



  --EXERCICIO CRIAR UMA TABELA DE CLIENTES
  --CLIENTES

 CREATE TABLE CLIENTE(
  ID_CLI INT PRIMARY KEY IDENTITY(1,1),
  NOME_CLI VARCHAR (100) NOT NULL,
  SEXO_CLI CHAR(1),
  CPF VARCHAR (50) NOT NULL,
  EMAIL VARCHAR (50) NOT NULL,
  DATA_NASC DATETIME NOT NULL)
  GO

  --EXERCICIO 2 - INSERIR DADOS DO CLIENTE

  INSERT INTO CLIENTE
  VALUES('007 - KAUA', 'M', '541.886.496-09', 'RM08426@ESTUDANTE.FIEB.EDU.BR', GETDATE())
  GO
  INSERT INTO CLIENTE
  VALUES('CALVO AOS 17 - ISAAC', 'M', '414.893.012-39', 'RM48159@ESTUDANTE.FIEB.EDU.BR', GETDATE())
  GO
  INSERT INTO CLIENTE
  VALUES('MANO LEO',  'M', '057.535.021-02', 'RM08424@ESTUDANTE.FIEB.EDU.BR', GETDATE())
  GO
  INSERT INTO CLIENTE
  VALUES('CAIO PAI DE FML', 'F', '145.414.256-99', 'RM48084@ESTUDANTE.FIEB.EDU.BR', GETDATE())
  GO

  SELECT * FROM CLIENTE
  GO

  --DROP TABLE CLIENTE
  GO

  --23/05/2022 - Exerc�cio: Criar uma tabela Funcion�rios

  CREATE TABLE FUNCIONARIO(
  ID_FUNC INT PRIMARY KEY IDENTITY(1,1),
  NOME_FUNC VARCHAR (100) NOT NULL,
  DT_NASC_FUNC DATE NOT NULL,
  TEL_FUNC VARCHAR (30) NOT NULL,
  SEXO_FUNC CHAR(1),
  EMAIL_FUNC VARCHAR (100),
  CPF_FUNC VARCHAR (20))
  GO
  
  INSERT INTO FUNCIONARIO
  VALUES('Leonardo Alvarez', '16/03/2005', '11 934327472', 'M', 'manoleo@func.itau.com', '654.789.285-34')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Renan Thiago da Silva', '10/07/2006', '11 964680873', 'M', 'renanzin@func.itau.com', '845.149.072-08')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Grazyelli Ramos', '09/10/2005', '11 973550835', 'F', 'grazy@func.itau.com', '086.374.716-94')
  GO
  
  INSERT INTO FUNCIONARIO
  VALUES('Kennedy Gabriel Andrade', '29/06/2004', '11 916541177', 'M', 'kenedito@func.itau.com', '031.733.325-67')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Kaua Florencio', '09/11/2005', '11 9764810297', 'M', '007@func.itau.com', '194.417.252-19')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Gabrielli Senegali Cristianini', '18/01/2006', '11 971871064', 'F', 'gabi@func.itau.com', '715.097.037-71')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Caio Dantas Cordeiro', '30/12/2004', '11 974169428', 'M', 'paifml@func.itau.com', '107.671.037-88')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Sabrina Sena Chiozzotto', '11/08/2003', '11 907873849', 'F', 'SahChio@func.itau.com', '123.456.789-00')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Breno Maximo Balduino', '15/04/2005', '11 915796418', 'M', 'brenao@func.itau.com', '478.014.675-44')
  GO

  INSERT INTO FUNCIONARIO
  VALUES('Victoria Soares Damasceno', '12/03/2005', '11 904786412', 'F', 'VicDamas@func.itau.com', '145.176.348-25')
  GO

  SELECT * FROM FUNCIONARIO
  GO

  --DROP TABLE FUNCIONARIO
  GO

  CREATE TABLE USUARIO(
  ID_USER INT PRIMARY KEY IDENTITY(1,1),
  LOGIN_USER VARCHAR (100) NOT NULL,
  SENHA_USER VARCHAR (10) NOT NULL,
  ID_FUNC_FK INT,
  FOREIGN KEY(ID_FUNC_FK)
  REFERENCES FUNCIONARIO(ID_FUNC))
  GO

  INSERT INTO USUARIO
  VALUES('ManoLeo', '0c4vSd52R5', 1)
  GO

    INSERT INTO USUARIO
  VALUES('SabrinaSena', 'dGs7487Dfg', 8)
  GO

    INSERT INTO USUARIO
  VALUES('Kennedito', 'We546S4g5a', 4)
  GO

  SELECT * FROM USUARIO
  GO

  --DROP TABLE USUARIO
  GO

  CREATE TABLE VENDA(
  ID_VENDA INT PRIMARY KEY IDENTITY(1,1),
  DT_VENDA DATETIME NOT NULL,
  QTD_VENDA_PROD DECIMAL (6,2),
  VALOR_TOT_VENDA DECIMAL (9,2),
  ID_FUNC_FK INT,
  ID_CLIENTE_FK INT,
  FOREIGN KEY(ID_FUNC_FK) REFERENCES
  FUNCIONARIO(ID_FUNC),
  FOREIGN KEY(ID_CLIENTE_FK) REFERENCES
  CLIENTE(ID_CLI))
  GO

  INSERT INTO VENDA
  VALUES(GETDATE(), '6.20', '17.40', '1', '2')
  GO
  INSERT INTO VENDA
  VALUES(GETDATE(), '4.20', '15.40', '1', '2')
  GO

  --DROP TABLE VENDA
  GO

  --AULA 7, PARA ATUALIZAR DADOS DE UM UNICO CAMPO
  SELECT * FROM CLIENTE
  WHERE ID_CLIENTE = 1
  GO
  
  UPDATE CLIENTE
  SET CPF = '11122233345',
  ENDERECO = 'RUA X',
  TEL = '1234-4561',
  SEXO = 'M',
  WHERE ID_CLIENTE = 1
  GO

 --Aula8
 --login
  --SA
  --@ITB123456

  CREATE TABLE SERV_PROD(
  ID_SERV_PROD INT PRIMARY KEY IDENTITY(1,1),
  NOME_SERV_PROD VARCHAR(255),
  VALOR_SERV_PROD DECIMAL(10,2),
  DESC_SERV_PROD VARCHAR (255),
  CATEG_SERV_PROD CHAR(1)
  CHECK (CATEG_SERV_PROD = '1' OR CATEG_SERV_PROD = '2'))
  GO

  INSERT INTO SERV_PROD
  VALUES ('BANHO E TOSA', '120.00', 'TOSA NA TESOURA', '1')
  GO
  INSERT INTO SERV_PROD
  VALUES ('VACINA��O', '20.00', 'VERIFICAR AS VACINAS DO ANIMAL, E DAR AS QUE ELE N�O TEM', '2')
  GO

  SELECT * FROM SERV_PROD
  GO
 

 --AULA 9 - COLOCAR OS GO's NO LUGAR DOS ;
 CREATE TABLE ITEM_VENDA(
 ID_SERV_PROD_FK INT,
 ID_VENDA_FK INT,
 FOREIGN KEY (ID_SERV_PROD_FK)
 REFERENCES SERV_PROD(ID_SERV_PROD),
 FOREIGN KEY (ID_VENDA_FK)
 REFERENCES VENDA(ID_VENDA))
 GO

 
  INSERT INTO ITEM_VENDA
  VALUES ('1','2')
  GO
  INSERT INTO ITEM_VENDA
  VALUES ('2', '2')
  GO

  SELECT * FROM ITEM_VENDA
  GO

 DROP TABLE ITEM_VENDA
 GO