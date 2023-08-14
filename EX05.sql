use teste;

select NomeFilial, No_De_Copias FROM filial_biblioteca LEFT JOIN copias_livro on filial_biblioteca.IdFilial = copias_livro.IdFilial;