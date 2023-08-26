use teste;

select NomeAutor, Titulo FROM autores_livro INNER JOIN livro ON autores_livro.IdLivro = livro.IdLivro;

