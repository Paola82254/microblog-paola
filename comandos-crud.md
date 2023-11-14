# Comandos SQL para operações de dados (CRUD)

## Resumo

- C: CREATE (INSERT) -> Usado para inserir dados
- R: READ (SELECT) -> Usado para ler/consultar dados
- U: UPDATE (UPDATE) -> Usado para atualizar dados
- D: DELETE (DELETE) -> Usado para excluir dados

## Exemplos

### INSERT na tabela de usuários
-- isso aqui no seu repositório github irá permitir uma visualização melhor do bloco de código porque ele ficará dentro de uma caixinha cinza. Para isso, você tem
que colocar 3 crases exatamente onde a gente quer que a formatação comece (bem onde começa nosso código) e seguido das 3 crases, vem o nome da linguagem utilizada, nesse caso aqui, o sql, e aí você termina, colocando 3 crases no final do seu código. Assim, você envolverá todo seu código com as 6 crases (3 no começo e 3 no final do código), As 3 primeiras crases juntamente com o nome da linguagem. Veja abaixo:

```sql
INSERT INTO usuarios (nome, email, senha, tipo)
VALUES(
    'Paola Thomaz',
    'Paola100@gmail.com',
    '123senac',
    'admin'    
);

INSERT INTO usuarios  (nome, email, senha, tipo)
VALUES(
    'Fulano da Silva',
    'fulano@gmail.com',
    '456',
    'editor'
), (
    'Beltrano Soares',
    'beltrano@msn.com',
    '000penha',
    'admin'
), (
    'Chapolin Colorado',
    'chapolin@vingadores.com.br',
    'marreta',
    'editor'
);
```
### SELECT na tabela de usuários

SELECT * FROM usuarios;

SELECT nome, email FROM usuarios;

SELECT nome, email FROM usuarios WHERE TIPO = 'admin';

### UPDATE de dados da tabela de usuários

UPDATE usuarios SET tipo = 'admin'
WHERE id = 4;

--OBS: NUNCA ESQUEÇA DE PASSAR UMA CONDIÇÃO PARA O UPDATE!

### DELETE de dados da tabela de usuários

DELETE FROM usuarios WHERE id = 2;

--OBS: NUNCA ESQUEÇA DE PASSAR UMA CONDIÇÃO PARA O DELETE!


### INSERT na tabela de noticias

INSERT INTO noticias(titulo, texto, resumo, usuario_id)
VALUES(
    'Descoberto oxigênio em Vênus',
    'Recentemente a sonda XYZ encontrou traços de oxigênio no planeta'
    'Nesta manhã, em um belo dia para a astronomia, muito legal',
    'venus.png',
    1
);

INSERT INTO noticias(titulo, texto, resumo, usuario_id)
VALUES(
    'Nova versão do VS CODE',
    'Recentemente o VS CODE foi atualizado'
    'A Microsoft trouxe recursos de IA..',
    'vscode.png',
    4
);

INSERT INTO noticias(titulo, texto, resumo, usuario_id)
VALUES(
    'Onda de calor no Brasil',
    'Temperaturas muito acima da média'
    'Efeitos do aquecimento global estão prejudicando a vida',
    'sol.svg',
    1
);

### Objetivo: consulta que mostre a data e o título da notícia e o nome do autor desta notícia.
### SELECT COM JOIN (CONSULTA COM JUNÇÃO DE TABELAS)
-- Especificamos o nome da coluna junto com o nome da tabela
SELECT 

--plural se referem Às tabelas (noticias-tabela noticias, usuarios- tabela de usuarios e cada coisa no singular é a coluna nome- coluna de nome, titulo -coluna de titulo...)
    noticias.data,
    noticias.titulo,
    usuarios.nome

--Especificamos quais tabelas serão "juntadas/combinadas"
FROM noticias JOIN usuarios

Critério para o JOIN funcionar
-- Fazemos uma comparação entre a chave estrangeira (FK)
-- com a chave primária (PK)
ON noticias.usuario_id = usuarios.id

-- Opcional (ordenação/classificação pela data)
-- DESC indica a ordem decrescente (mais recente vem primeiro)
ORDER BY data DESC; -- opcional