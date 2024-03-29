drop database if exists teste;
create database teste;
use teste;

CREATE TABLE EDITORA(
	Nome char(60),
	Endereco VARCHAR(50),	
        Fone VARCHAR(30),

	PRIMARY KEY(Nome)
);

CREATE TABLE USUARIO(
	NoCartao integer,
	Nome text,
	Endereco text,
	Fone text,
	PRIMARY KEY(NoCartao)
);

CREATE TABLE FILIAL_BIBLIOTECA(
	IdFilial integer,
	NomeFilial text,
	Endereco text,
	PRIMARY KEY(IdFilial)
);

CREATE TABLE LIVRO(
	IdLivro integer,
	Titulo text,
	NomeEditora char(60),
	PRIMARY KEY(IdLivro),
	FOREIGN KEY (NomeEditora) REFERENCES EDITORA(Nome)
);

CREATE TABLE AUTORES_LIVRO(
	IdLivro integer,
	NomeAutor char(100),
	PRIMARY KEY(IdLivro, NomeAutor),
	FOREIGN KEY (IdLivro) REFERENCES LIVRO(IdLivro)
);

CREATE TABLE COPIAS_LIVRO(
	IdLivro integer,
	IdFilial integer,
	No_De_Copias integer,
	PRIMARY KEY(IdLivro, IdFilial),
	FOREIGN KEY (IdLivro) REFERENCES LIVRO(IdLivro),
	FOREIGN KEY (IdFilial) REFERENCES FILIAL_BIBLIOTECA(IdFilial)
);

CREATE TABLE LIVROS_EMPRESTADOS(
	IdLivro integer,
	IdFilial integer,
	NoCartao integer,
	DataSaida date,
	DataDevolucao date,
	PRIMARY KEY(IdLivro, IdFilial, NoCartao),
	FOREIGN KEY (IdLivro) REFERENCES LIVRO(IdLivro),
	FOREIGN KEY (IdFilial) REFERENCES FILIAL_BIBLIOTECA(IdFilial),
	FOREIGN KEY (NoCartao) REFERENCES USUARIO(NoCartao)
);


INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Elsevier', '(11)5105-8555', 'Rua Quintana, 753 - Brooklin Novo, São Paulo - SP');
INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Sextante', '(21)2538-4100', 'Rua Voluntários da Pátria, 45 - Botafogo, Rio de Janeiro - RJ, SALA 1404');
INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Suma de Letras', '(21)2199-7824', 'Rua Cosme Velho, 103 - Cosme Velho, Rio de Janeiro - RJ');
INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Leya', '(11)3129-5448', 'Rua Desembargador Paulo Passaláqua, 86 - Pacaembú, São Paulo - SP');
INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Companhia das Letras', '(11)3707-3500', 'Rua Bandeira Paulista, 702 - Itaim, São Paulo - SP, cj. 32');
INSERT INTO EDITORA (Nome, Endereco, Fone) VALUES ('Cosac Naify', '(11)3218-1444', 'Rua Gen. Jardim, 770 - Vila Buarque, São Paulo - SP');

INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (1, 'Joaquim Antonio Barbosa', 'Rua Agostinho, 96, Santo André - SP', '(11)0396-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (2, 'Anderson Oliveira', 'Rua Cd. Bonfim, 817, Santo André - SP', '(11)0996-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (3, 'Andre Jordao', 'Rua Sto. Afonso, 83, São Bernardo do Campo - SP', '(11)0996-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (4, 'Bruno Jose Santos', 'Rua Abreu Vieira, 85, Santo André - SP', '(11)0496-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (5, 'Camila do Amaral', 'Rua Alfredo Pinto, 86, Santo André - SP', '(11)0446-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (6, 'Clara Li', 'Rua Eng. Adel, 88, São Bernardo do Campo - SP', '(11)0196-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (7, 'David Figueiras', 'Rua Dr. Abelardo de Barros, 91, Santo André - SP', '(11)0296-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (8, 'Eric Santos Alves', 'Rua Belvedere, 93, Santo André - SP', '(11)0336-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (9, 'Fabricio de Sousa', 'Rua Francisco Graça, 36, São Bernardo do Campo - SP', '(11)0299-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (10, 'Felipe Amorim', 'Rua Adolfo Mota, 27, Santo André - SP', '(11)0493-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (11, 'Felipe Mariano', 'Rua Aguiar, 99, Santo André - SP', '(11)0444-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (12, 'Felipe Gustavo', 'Rua Benjamin Franklin, 63, São Bernardo do Campo - SP', '(11)0556-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (13, 'Fernando Santiago', 'Rua Garibaldi, 06, Santo André - SP', '(11)0669-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (14, 'Gabriela Bressan', 'Rua Acis Castilho,48, Santo André - SP', '(11)0496-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (15, 'Gabrielle Alcantara', 'Rua Basiléia, 91, Santo André - SP', '(11)0797-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (16, 'Gustavo Silva', 'Rua Agostinho, 33, Santo André - SP', '(11)0776-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (17, 'Geovanne Menezes', 'Rua Cd. Bonfim, 76, São Bernardo do Campo - SP', '(11)0486-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (18, 'Joao Carlos Moreira', 'Rua Sto. Afonso, 18, Santo André - SP', '(11)0996-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (19, 'Guilherme Bergamo', 'Rua Abreu Vieira, 61, São Bernardo do Campo - SP', '(11)0406-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (20, 'Igor Vinicius', 'Rua Alfredo Pinto, 16703, Santo André - SP', '(11)0906-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (21, 'Maria Estela Jordao', 'Rua Eng. Adel, 186, Santo André - SP', '(11)0111-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (22, 'Lais Barros', 'Rua Dr. Abelardo de Barros, 205, Santo André - SP', '(11)0226-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (23, 'Luciana Toledo', 'Rua Belvedere, 3422531, Santo André - SP', '(11)0332-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (24, 'Luis Fernando Aragao', 'Rua Francisco Graça, 243, São Bernardo do Campo - SP', '(11)0556-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (25, 'Michel Carlos Cardoso', 'Rua Adolfo Mota, 26, Santo André - SP', '(11)0497-0000');
INSERT INTO USUARIO (NoCartao, Nome, Endereco, Fone) VALUES (26, 'Paulo Rangel Alves', 'Rua Aguiar, 235, São Bernardo do Campo - SP', '(11)0886-0000');

INSERT INTO FILIAL_BIBLIOTECA (IdFilial, NomeFilial, Endereco) VALUES (1, 'Santo André', 'Rua Abolição, S/N - Bangu, Santo André - SP, Bloco C');
INSERT INTO FILIAL_BIBLIOTECA (IdFilial, NomeFilial, Endereco) VALUES (2, 'São Bernardo do Campo', 'Rua Arcturus, 3 - Jd. Antares, São Bernardo do Campo - SP, Bloco Beta');

INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (1, 'Sistemas de Bancos de Dados', 'Elsevier' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (2, 'Data Mining', 'Elsevier' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (3, 'Engenharia de Software', 'Elsevier' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (4, 'Introdução a Sistemas de Bancos de Dados', 'Elsevier' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (5, 'Princípios de Análise e Projeto de Sistemas com UML', 'Elsevier' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (6, 'O Alquimista', 'Sextante' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (7, 'Adultério', 'Sextante' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (8, 'As Valkírias', 'Sextante' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (9, 'O Iluminado', 'Suma de Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (10, 'Carrie, a Estranha', 'Suma de Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (11, 'O Cemitério', 'Suma de Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (12, 'It - A Coisa', 'Suma de Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (13, 'Doutor Sono', 'Suma de Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (14, 'A Guerra dos Tronos', 'Leya' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (15, 'A Fúria dos Reis', 'Leya' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (16, 'A Dança dos Dragões', 'Leya' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (17, 'O Mentalista', 'Leya' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (18, 'Mussum Forevis', 'Leya' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (19, 'A Revolução dos Bichos', 'Companhia das Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (20, 'MAUS - A História de um Sobrevivente', 'Companhia das Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (21, 'Toda Poesia - Paulo Leminski', 'Companhia das Letras' );
INSERT INTO LIVRO (IdLivro, Titulo, NomeEditora) VALUES (22, 'Contos Maravilhosos Infantis e Domésticos', 'Cosac Naify' );

INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (1, 'Abraham Silberschatz' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (1, 'Henry F. Korth' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (1, 'S. Sudarshan' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (2, 'Ronaldo Goldschmidt' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (2, 'Emmanuel Passos' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (2, 'Eduardo Bezerra' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (3, 'Kechi Hirama' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (4, 'C. J. Date' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (5, 'Eduardo Bezerra' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (6, 'Paulo Coelho' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (7, 'Paulo Coelho' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (8, 'Paulo Coelho' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (9, 'Stephen King' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (10, 'Stephen King' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (11, 'Stephen King' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (12, 'Stephen King' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (13, 'Stephen King' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (14, 'George R. R. Martin' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (15, 'George R. R. Martin' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (16, 'George R. R. Martin' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (17, 'Thorsten Havener' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (18, 'Juliano Barreto' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (19, 'George Orwell' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (20, 'Antonio de Macedo Soares' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (21, 'Paulo Leminski' );
INSERT INTO AUTORES_LIVRO (IdLivro, NomeAutor) VALUES (22, 'Irmãos Grimm' );

INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (1, 1, 12);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (2, 1, 7);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (3, 1, 1);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (5, 1, 8);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (6, 1, 10);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (7, 1, 12);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (9, 1, 1);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (10, 1, 20);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (11, 1, 30);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (12, 1, 2);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (13, 1, 14);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (15, 1, 6);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (16, 1, 7);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (17, 1, 8);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (18, 1, 3);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (19, 1, 3);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (20, 1, 4);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (1, 2, 12);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (2, 2, 5);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (4, 2, 8);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (5, 2, 3);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (7, 2, 5);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (8, 2, 6);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (9, 2, 10);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (11, 2, 14);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (12, 2, 15);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (13, 2, 13);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (14, 2, 12);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (15, 2, 10);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (17, 2, 5);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (18, 2, 2);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (20, 2, 1);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (21, 2, 14);
INSERT INTO COPIAS_LIVRO (IdLivro, IdFilial, No_De_Copias) VALUES (22, 2, 6);

INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 1, 1, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 1, 2, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 1, 22, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 1, 24, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 1, 5, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 1, 6, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 1, 7, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 1, 16, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 1, 9, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (3, 1, 10, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (3, 1, 24, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 1, 12, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 1, 13, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 1, 17, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (6, 1, 15, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (6, 1, 1, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (6, 1, 21, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (6, 1, 3, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (9, 1, 4, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (9, 1, 5, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (10, 1, 6, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (10, 1, 21, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (10, 1, 8, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (10, 1, 9, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (10, 1, 10, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 11, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 12, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 17, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 18, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 15, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 1, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 23, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 1, 22, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (13, 1, 4, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (15, 1, 5, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (16, 1, 6, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (18, 1, 7, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (18, 1, 8, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (18, 1, 9, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (19, 1, 10, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (19, 1, 11, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (19, 1, 12, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 2, 16, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 2, 17, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 2, 18, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 2, 19, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (1, 2, 20, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 2, 21, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 2, 22, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 2, 23, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 2, 24, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (2, 2, 16, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (4, 2, 17, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (4, 2, 18, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (4, 2, 19, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (4, 2, 20, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 2, 21, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 2, 22, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (5, 2, 23, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (7, 2, 24, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (7, 2, 16, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (7, 2, 17, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (7, 2, 18, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (8, 2, 19, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (8, 2, 20, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (8, 2, 21, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 2, 22, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 2, 23, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 2, 24, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (11, 2, 16, '2019-10-27', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (13, 2, 17, '2019-10-18', '2019-10-25');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (13, 2, 18, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (13, 2, 19, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (13, 2, 20, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (17, 2, 2, '2019-10-23', '2019-10-30');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (17, 2, 3, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (17, 2, 23, '2019-10-26', '2019-11-03');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (18, 2, 24, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (20, 2, 16, '2019-10-26', '2019-11-02');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (21, 2, 17, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (22, 2, 18, '2019-10-30', '2019-11-11');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (22, 2, 19, '2019-10-29', '2019-11-10');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (7, 1, 21, '2019-10-02', '2019-10-29');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (22, 2, 20, '2019-10-24', '2019-11-01');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (6, 1, 16, '2019-10-05', '2019-10-21');
INSERT INTO LIVROS_EMPRESTADOS (IdLivro, IdFilial, NoCartao, DataSaida, DataDevolucao) VALUES (8, 2, 16, '2019-10-09', '2019-10-16');



