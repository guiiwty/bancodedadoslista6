CREATE TABLE curso (
  id INT PRIMARY KEY,
  nome CHAR(50)
);

INSERT INTO curso (id, nome) VALUES
(1, 'JAVA'),
(2, 'C++'),
(3, 'C#'),
(4, 'PHP');

CREATE TABLE aluno (
  id INT PRIMARY KEY,
  nome CHAR(50),
  curso INT,
  FOREIGN KEY (curso) REFERENCES curso(id)
);

INSERT INTO aluno (id, nome, curso) VALUES
(1, 'Joao', 1),
(2, 'Maria', 2),
(3, 'Pedro', 1),
(4, 'Ana', 3),
(5, 'Tiago', NULL);

SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
FROM aluno
LEFT JOIN curso ON aluno.curso = curso.id;

SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
FROM aluno
INNER JOIN curso ON aluno.curso = curso.id;

SELECT curso.nome AS curso_nome, aluno.nome AS aluno_nome
FROM curso
INNER JOIN aluno ON curso.id = aluno.curso;

SELECT nome AS aluno_nome
FROM aluno
WHERE curso IS NULL;

SELECT aluno.nome AS aluno_nome, curso.nome AS curso_nome
FROM aluno
LEFT JOIN curso ON aluno.curso = curso.id;
