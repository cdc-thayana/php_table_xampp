# php_table_xampp
![image](https://github.com/user-attachments/assets/d54537e6-b5ec-443f-bcca-da902c7feae8)


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
