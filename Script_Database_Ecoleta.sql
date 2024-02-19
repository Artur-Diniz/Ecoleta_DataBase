CREATE TABLE Ecopontoints (
  idEcopontoints INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Ordem_Grandeza CHAR NULL,
  Quantidade INT NULL,
  Ecopoints INT NULL,
  PRIMARY KEY(idEcopontoints)
);

CREATE TABLE Ecoponto (
  Id_Ecoponto INT NOT NULL AUTO_INCREMENT,
  CNPJ CHAR(14) NULL,
  Razao_Social CHAR NULL,
  Logradouro CHAR() NULL,
  Endereco CHAR(25) NULL,
  Numero CHAR(10) NULL,
  Bairro CHAR NULL,
  Cidade CHAR NULL,
  UF CHAR(2) NULL,
  Cep INT(8) NULL,
  Longitude FLOAT NULL,
  Latitude FLOAT NULL,
  PRIMARY KEY(Id_Ecoponto)
);

CREATE TABLE Utilizador (
  Id_Utilizador INT NOT NULL AUTO_INCREMENT,
  Nome CHAR NULL,
  Email CHAR NULL,
  Situacao_Email BOOL NULL,
  PRIMARY KEY(Id_Utilizador)
);

CREATE TABLE Material (
  Id_Material INT NOT NULL AUTO_INCREMENT,
  Descrição CHAR NULL,
  Classe INT NULL,
  PRIMARY KEY(Id_Material)
);

CREATE TABLE Classe_Material (
  Id_Classe-Material INT NOT NULL AUTO_INCREMENT,
  Descrição CHAR NULL,
  PRIMARY KEY(Id_Classe-Material)
);

CREATE TABLE Brinde (
  Id_Brinde INT NOT NULL AUTO_INCREMENT,
  Descricao CHAR NULL,
  Quantidade INT NULL,
  validade DATE NULL,
  Saldo INT NULL,
  Ecopoints INT NULL,
  PRIMARY KEY(Id_Brinde)
);

CREATE TABLE Utilizador_Ecopontos (
  Id_Utilizador INT NOT NULL,
  Data_Descarte INTEGER UNSIGNED NOT NULL,
  Trajetória CHAR NULL,
  qtde_Ecopontos FLOAT NULL,
  Saldo_Ecopontos INTEGER UNSIGNED NULL,
  PRIMARY KEY(Id_Utilizador)
);

CREATE TABLE Coleta (
  Id_Coleta INT NOT NULL AUTO_INCREMENT,
  Id_Utilizador INT NOT NULL,
  Codigo_Ultilizador INT NULL,
  Codigo_Ecoponto INT NULL,
  Data_Coleta DATETIME NULL,
  Total_Ecopoints INT NULL,
  Situação CHAR NULL,
  PRIMARY KEY(Id_Coleta)
);

CREATE TABLE Ecoponto_Horario (
  Id_Ecoponto INT NOT NULL,
  Dia_Semana INT NOT NULL,
  Hora_Inicio INT NULL,
  Hora_Fim INT NULL,
  PRIMARY KEY(Id_Ecoponto)
);

CREATE TABLE Utilizador_Brinde (
  Id_Brinde INT NOT NULL,
  Id_Utilizador INT NOT NULL,
  Momento CHAR NOT NULL,
  PRIMARY KEY(Id_Brinde, Id_Utilizador)
);

CREATE TABLE Coleta_Item (
  Id_Coleta INT NOT NULL AUTO_INCREMENT,
  Id_Material INT NOT NULL,
  Quantidade FLOAT NULL,
  Total_Pontos  INT NULL,
  PRIMARY KEY(Id_Coleta, Id_Material)
);

CREATE TABLE Material_Ecoponto (
  Id_Ecoponto INT NOT NULL,
  Id_Material INT NOT NULL,
  Data_Cadastro DATETIME NULL,
  Situacao CHAR NULL,
  Data_Situacao DATETIME NULL,
  PRIMARY KEY(Id_Ecoponto, Id_Material)
);

CREATE TABLE Ultilizador_Ecoponto (
  Id_Ecoponto INT NOT NULL,
  Id_Utilizador INT NOT NULL,
  Data_Inclusão DATETIME NOT NULL,
  PRIMARY KEY(Id_Ecoponto, Id_Utilizador)
);

CREATE TABLE Coleta_Avaliação (
  Id_Coleta INT NOT NULL,
  Momento CHAR NOT NULL,
  Nota INT NULL,
  PRIMARY KEY(Id_Coleta)
);


