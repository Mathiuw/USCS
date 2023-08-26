use teste;

select Nome FROM usuario left join livros_emprestados on usuario.NoCartao = livros_emprestados.NoCartao WHERE livros_emprestados.NoCartao is NULL;