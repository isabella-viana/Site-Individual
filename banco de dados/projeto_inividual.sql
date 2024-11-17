CREATE DATABASE projeto_individual;

USE  projeto_individual;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
    username VARCHAR(45),
	email VARCHAR(150),
	senha VARCHAR(50)
);
select * from usuario;
CREATE TABLE post (
  idPost INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(45),
  texto VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  fkusuario INT,
  FOREIGN KEY (fkusuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE comentarios (
  idComentarios INT AUTO_INCREMENT PRIMARY KEY, 
  fkPost INT NOT NULL, 
  fkUsuario INT NOT NULL, 
  comentario varchar(300) NOT NULL, 
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  FOREIGN KEY (fkPost) REFERENCES post(idPost), 
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario) 
);

CREATE TABLE likes (
  idLikes INT AUTO_INCREMENT PRIMARY KEY, 
  fkPost INT NOT NULL, 
  fkUsuario INT NOT NULL, 
  FOREIGN KEY (fkPost) REFERENCES post(idPost), 
  FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario) 
);


/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */
CREATE TABLE emocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emocao VARCHAR(50) NOT NULL,
    intensidade INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);





