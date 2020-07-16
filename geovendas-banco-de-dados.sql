CREATE TABLE `casa` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `logradouro` text NOT NULL,
  `bairro` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `base` varchar(100) NOT NULL,
  `tecnologia` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL DEFAULT 'SEM CEP',
  `velocidade` varchar(90) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10525 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `pedidos_cep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cep` varchar(12) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;



CREATE TABLE `predio` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `logradouro` text NOT NULL,
  `bairro` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `base` varchar(100) NOT NULL,
  `tecnologia` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `velocidade` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `rules` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tipo0` varchar(255) NOT NULL,
  `param0` varchar(255) NOT NULL,
  `tipo1` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `tipo2` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `tipo3` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `tipo4` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `promocao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tipo` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO `usuarios` VALUES (1,'admin','admin','81dc9bdb52d04dc20036dbd8313ed055',0);
