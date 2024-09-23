CREATE TABLE disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE alunos (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE matriculas (
    id SERIAL PRIMARY KEY,
    id_disciplina INT REFERENCES disciplinas(id),
    matricula_aluno INT REFERENCES alunos(matricula),
    UNIQUE (id_disciplina, matricula_aluno)
);

CREATE TABLE notas (
    id SERIAL PRIMARY KEY,
    id_disciplina INT REFERENCES disciplinas(id),
    matricula_aluno INT REFERENCES alunos(matricula),
    nota DECIMAL(5,2),
    UNIQUE (id_disciplina, matricula_aluno)
);
