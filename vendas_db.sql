-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/10/2024 às 00:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vendas_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_nopad_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_nopad_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_pet_shop`
--

CREATE TABLE `produtos_pet_shop` (
  `id` int(11) NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade_estoque` int(11) NOT NULL,
  `descricao` text DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_nopad_ci;

--
-- Despejando dados para a tabela `produtos_pet_shop`
--

INSERT INTO `produtos_pet_shop` (`id`, `nome_produto`, `categoria`, `preco`, `quantidade_estoque`, `descricao`, `fornecedor`) VALUES
(1, 'Ração Premium para Cães', 'Alimentação', 79.90, 50, 'Ração premium para cães adultos, sabor frango', 'PetFood Suppliers'),
(2, 'Ração para Gatos', 'Alimentação', 55.50, 30, 'Ração sabor peixe para gatos de todas as idades', 'CatFoods Ltda'),
(3, 'Shampoo para Cães', 'Higiene', 22.90, 100, 'Shampoo suave para cães, fórmula sem lágrimas', 'CleanPets'),
(4, 'Brinquedo Bola de Borracha', 'Brinquedos', 15.00, 200, 'Bola de borracha resistente para cães de todos os portes', 'PetToys Inc.'),
(5, 'Coleira Ajustável', 'Acessórios', 25.00, 75, 'Coleira de nylon ajustável para cães', 'PetGear'),
(6, 'Caminha para Cães Pequenos', 'Conforto', 120.00, 20, 'Caminha confortável para cães de porte pequeno', 'PetComfort Ltda'),
(7, 'Tapete Higiênico', 'Higiene', 40.00, 60, 'Tapete higiênico absorvente para cães', 'CleanPets'),
(8, 'Ração para Hamster', 'Alimentação', 18.90, 40, 'Ração completa para hamsters', 'SmallPets Foods'),
(9, 'Arranhador para Gatos', 'Brinquedos', 85.00, 10, 'Arranhador com três níveis para gatos', 'CatToys Ltda'),
(10, 'Antipulgas e Carrapatos', 'Medicamentos', 35.00, 150, 'Produto antipulgas para cães e gatos', 'VetHealth'),
(11, 'Osso de Borracha', 'Brinquedos', 12.50, 100, 'Brinquedo em formato de osso, resistente', 'PetToys Inc.'),
(12, 'Gaiola para Pássaros', 'Acessórios', 220.00, 5, 'Gaiola grande com acessórios para pássaros', 'BirdHouse Ltda'),
(13, 'Casinha de Plástico para Cães', 'Conforto', 150.00, 15, 'Casinha de plástico resistente para cães de porte médio', 'PetComfort Ltda'),
(14, 'Cinto de Segurança para Cães', 'Acessórios', 29.90, 80, 'Cinto de segurança para transporte de cães em veículos', 'PetGear'),
(15, 'Petiscos para Gatos', 'Alimentação', 10.00, 120, 'Petiscos sabor peixe para gatos', 'CatFoods Ltda'),
(16, 'Vermífugo para Cães', 'Medicamentos', 45.00, 60, 'Vermífugo em comprimidos para cães', 'VetHealth'),
(17, 'Bebedouro Automático', 'Acessórios', 75.00, 25, 'Bebedouro automático para cães e gatos', 'PetGear'),
(18, 'Peitoral para Gatos', 'Acessórios', 18.00, 40, 'Peitoral de nylon ajustável para gatos', 'CatWear Ltda'),
(19, 'Condicionador para Cães', 'Higiene', 30.00, 90, 'Condicionador para pelagem macia de cães', 'CleanPets'),
(20, 'Ração para Peixes', 'Alimentação', 25.00, 60, 'Ração em flocos para peixes ornamentais', 'FishFoods'),
(21, 'Brinquedo Mordedor de Nylon', 'Brinquedos', 20.00, 150, 'Mordedor resistente para cães de grande porte', 'PetToys Inc.'),
(22, 'Casinha de Madeira para Cães', 'Conforto', 300.00, 5, 'Casinha de madeira tratada para cães de grande porte', 'PetComfort Ltda'),
(23, 'Tapete Gelado para Cães', 'Conforto', 80.00, 30, 'Tapete gelado para refrescar cães em dias quentes', 'CoolPets'),
(24, 'Ração Úmida para Gatos', 'Alimentação', 6.50, 200, 'Ração úmida em latas, sabor carne', 'CatFoods Ltda'),
(25, 'Brinquedo de Pelúcia para Gatos', 'Brinquedos', 25.00, 100, 'Brinquedo de pelúcia com catnip para gatos', 'CatToys Ltda'),
(26, 'Shampoo Antipulgas', 'Higiene', 28.00, 70, 'Shampoo antipulgas para cães', 'CleanPets'),
(27, 'Coleira com GPS', 'Acessórios', 150.00, 10, 'Coleira com rastreador GPS para cães', 'PetGear'),
(28, 'Petiscos Dentais para Cães', 'Alimentação', 15.00, 90, 'Petiscos para ajudar na saúde bucal de cães', 'DogSnacks Ltda'),
(29, 'Fonte de Água para Gatos', 'Acessórios', 90.00, 20, 'Fonte automática de água para gatos', 'CatWear Ltda'),
(30, 'Brinquedo de Corda', 'Brinquedos', 14.00, 200, 'Brinquedo de corda para cães de médio porte', 'PetToys Inc.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `desconto` decimal(5,2) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_nopad_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `nome`, `endereco`, `telefone`, `valor_compra`, `quantidade`, `total`, `desconto`, `cliente_id`, `produto_id`) VALUES
(1, '[JOÃO SILVA]', '[RUA A FONSECA]', '[912345678]', 25.00, 4, 100.00, 0.00, NULL, NULL),
(2, '[PAULO FELIZ]', '[RUA B TRANCADO]', '[912345678]', 39.45, 6, 0.00, 0.00, NULL, NULL),
(3, 'Maria Santos', 'Rua B, 123', '912345679', 50.00, 3, 150.00, 5.00, NULL, NULL),
(4, 'Carlos Almeida', 'Rua C, 456', '912345680', 200.00, 1, 200.00, 20.00, NULL, NULL),
(5, 'Ana Costa', 'Rua D, 789', '912345681', 75.00, 4, 300.00, 15.00, NULL, NULL),
(6, 'José Martins', 'Avenida E, 101', '912345682', 120.00, 2, 240.00, 10.00, NULL, NULL),
(7, 'Fernanda Lopes', 'Travessa F, 202', '912345683', 30.00, 5, 150.00, 7.50, NULL, NULL),
(8, 'Paulo Pereira', 'Rua G, 303', '912345684', 90.00, 1, 90.00, 0.00, NULL, NULL),
(9, 'Luciana Silva', 'Avenida H, 404', '912345685', 60.00, 3, 180.00, 5.00, NULL, NULL),
(10, 'Rodrigo Souza', 'Rua I, 505', '912345686', 300.00, 1, 300.00, 30.00, NULL, NULL),
(11, 'Juliana Ferreira', 'Avenida J, 606', '912345687', 150.00, 2, 300.00, 20.00, NULL, NULL),
(12, 'Marcelo Rocha', 'Rua K, 707', '912345688', 110.00, 3, 330.00, 10.00, NULL, NULL),
(13, 'Patrícia Lima', 'Rua L, 808', '912345689', 80.00, 4, 320.00, 15.00, NULL, NULL),
(14, 'Fábio Teixeira', 'Rua M, 909', '912345690', 45.00, 6, 270.00, 10.00, NULL, NULL),
(15, 'Vanessa Carvalho', 'Rua N, 1010', '912345691', 130.00, 1, 130.00, 0.00, NULL, NULL),
(16, 'Rafael Gomes', 'Avenida O, 1111', '912345692', 220.00, 2, 440.00, 25.00, NULL, NULL),
(17, 'Bianca Barbosa', 'Rua P, 1212', '912345693', 95.00, 3, 285.00, 5.00, NULL, NULL),
(18, 'Gustavo Araújo', 'Rua Q, 1313', '912345694', 125.00, 2, 250.00, 12.50, NULL, NULL),
(19, 'Sabrina Pinto', 'Rua R, 1414', '912345695', 50.00, 5, 250.00, 10.00, NULL, NULL),
(20, 'Diego Nunes', 'Rua S, 1515', '912345696', 160.00, 1, 160.00, 8.00, NULL, NULL),
(21, 'Camila Ribeiro', 'Rua T, 1616', '912345697', 45.00, 3, 135.00, 5.00, NULL, NULL),
(22, 'Eduardo Lima', 'Avenida U, 1717', '912345698', 210.00, 4, 840.00, 40.00, NULL, NULL),
(23, 'Gabriela Cardoso', 'Rua V, 1818', '912345699', 70.00, 2, 140.00, 10.00, NULL, NULL),
(24, 'André Dias', 'Rua W, 1919', '912345700', 80.00, 3, 240.00, 12.00, NULL, NULL),
(26, 'Bruno Silva', 'Rua Y, 2121', '912345702', 90.00, 2, 180.00, 7.50, NULL, NULL),
(27, 'Helena Mendes', 'Rua Z, 2222', '912345703', 125.00, 1, 125.00, 5.00, NULL, NULL),
(28, 'Vinícius Torres', 'Rua AA, 2323', '912345704', 105.00, 3, 315.00, 10.00, NULL, NULL),
(29, 'Tatiana Lopes', 'Rua BB, 2424', '912345705', 100.00, 2, 200.00, 5.00, NULL, NULL),
(30, 'Alexandre Oliveira', 'Rua CC, 2525', '912345706', 85.00, 4, 340.00, 12.50, NULL, NULL),
(31, 'Larissa Farias', 'Rua DD, 2626', '912345707', 110.00, 3, 330.00, 20.00, NULL, NULL),
(32, 'Ricardo Santos', 'Rua EE, 2727', '912345708', 140.00, 2, 280.00, 10.00, NULL, NULL),
(33, 'Eliane Cunha', 'Rua FF, 2828', '912345709', 60.00, 5, 300.00, 15.00, NULL, NULL),
(34, 'Fernando Azevedo', 'Rua GG, 2929', '912345710', 200.00, 1, 200.00, 10.00, NULL, NULL),
(35, 'Aline Moura', 'Rua HH, 3030', '912345711', 175.00, 2, 350.00, 17.50, NULL, NULL),
(36, 'Pedro Correia', 'Rua II, 3131', '912345712', 65.00, 3, 195.00, 8.00, NULL, NULL),
(37, 'Sofia Almeida', 'Rua JJ, 3232', '912345713', 50.00, 4, 200.00, 0.00, NULL, NULL),
(38, 'Leonardo Rocha', 'Rua KK, 3333', '912345714', 220.00, 1, 220.00, 25.00, NULL, NULL),
(39, 'Marta Nascimento', 'Rua LL, 3434', '912345715', 90.00, 3, 270.00, 7.50, NULL, NULL),
(40, 'Renato Barbosa', 'Rua MM, 3535', '912345716', 125.00, 2, 250.00, 10.00, NULL, NULL),
(41, 'Carla Nogueira', 'Rua NN, 3636', '912345717', 150.00, 1, 150.00, 0.00, NULL, NULL),
(42, 'Lucas Machado', 'Rua OO, 3737', '912345718', 100.00, 2, 200.00, 20.00, NULL, NULL),
(43, 'Verônica Lima', 'Rua PP, 3838', '912345719', 85.00, 3, 255.00, 15.00, NULL, NULL),
(44, 'Rogério Ferreira', 'Rua QQ, 3939', '912345720', 70.00, 4, 280.00, 10.00, NULL, NULL),
(45, 'Simone Cardoso', 'Rua RR, 4040', '912345721', 95.00, 2, 190.00, 5.00, NULL, NULL),
(46, 'Thiago Costa', 'Rua SS, 4141', '912345722', 110.00, 1, 110.00, 0.00, NULL, NULL),
(47, 'Amanda Duarte', 'Rua TT, 4242', '912345723', 130.00, 3, 390.00, 20.00, NULL, NULL),
(48, 'Márcio Leite', 'Rua UU, 4343', '912345724', 60.00, 4, 240.00, 12.00, NULL, NULL),
(49, 'Letícia Gonçalves', 'Rua VV, 4444', '912345725', 75.00, 5, 375.00, 15.00, NULL, NULL),
(50, 'Vitor Ramos', 'Rua WW, 4545', '912345726', 45.00, 2, 90.00, 0.00, NULL, NULL),
(51, 'Débora Santos', 'Rua XX, 4646', '912345727', 140.00, 3, 420.00, 30.00, NULL, NULL),
(52, 'Antônio Pires', 'Rua YY, 4747', '912345728', 80.00, 1, 80.00, 5.00, NULL, NULL),
(53, 'Mariana Souza', 'Rua ZZ, 4848', '912345729', 100.00, 2, 200.00, 10.00, NULL, NULL),
(54, 'Felipe Andrade', 'Rua AAA, 4949', '912345730', 120.00, 3, 360.00, 15.00, NULL, NULL),
(55, 'Daniela Oliveira', 'Rua BBB, 5050', '912345731', 200.00, 1, 200.00, 25.00, NULL, NULL),
(56, 'Bruna Nunes', 'Rua CCC, 5151', '912345732', 110.00, 2, 220.00, 20.00, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos_pet_shop`
--
ALTER TABLE `produtos_pet_shop`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos_pet_shop`
--
ALTER TABLE `produtos_pet_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
