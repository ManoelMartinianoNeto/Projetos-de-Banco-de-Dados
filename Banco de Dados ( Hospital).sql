CREATE TABLE Paciente (
    RG VARCHAR(20) PRIMARY KEY,
    CPF VARCHAR(20) NOT NULL,
    Rua VARCHAR(100) NOT NULL,
    Numero VARCHAR(10) NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    CRM_Médico_Responsável VARCHAR(20),
    FOREIGN KEY (CRM_Médico_Responsável) REFERENCES Médico(CRM)
);

CREATE TABLE TelefonePaciente (
    RG_Paciente VARCHAR(20),
    Telefone VARCHAR(20),
    PRIMARY KEY (RG_Paciente, Telefone),
    FOREIGN KEY (RG_Paciente) REFERENCES Paciente(RG)
);

CREATE TABLE Médico (
    CRM VARCHAR(20) PRIMARY KEY,
    TelefoneCelular VARCHAR(20) NOT NULL,
    Especializacao VARCHAR(50) NOT NULL
);

CREATE TABLE Consulta (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DataRealizacao DATE NOT NULL,
    TipoConsulta VARCHAR(50) NOT NULL,
    Resultado TEXT,
    RG_Paciente VARCHAR(20) NOT NULL,
    CRM_Médico VARCHAR(20) NOT NULL,
    FOREIGN KEY (RG_Paciente) REFERENCES Paciente(RG),
    FOREIGN KEY (CRM_Médico) REFERENCES Médico(CRM)
);
