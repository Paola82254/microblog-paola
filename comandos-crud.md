# Comandos SQL para operações de dados (CRUD)

## Resumo

- C: CREATE (INSERT) -> Usado para inserir dados
- R: READ (SELECT) -> Usado para ler/consultar dados
- U: UPDATE (UPDATE) -> Usado para atualizar dados
- D: DELETE (DELETE) -> Usado para excluir dados

## Exemplos

### INSERT na tabela de usuários

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

### SELECT na tabela de usuários

SELECT * FROM usuarios;

SELECT nome, email FROM usuarios;

SELECT nome, email FROM usuarios WHERE TIPO = 'admin';

### UPDATE de dados da tabela de usuários

UPDATE usuarios SET tipo = 'admin'
WHERE id = 4;

--OBS: NUNCA ESQUEÇA DE PASSAR UMA CONDIÇÃO PARA O UPDATE!