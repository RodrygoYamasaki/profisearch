-- Seed data: categories, locations and 15 example professionals
-- Categories
INSERT INTO category (id, name) VALUES (1, 'Eletricista');
INSERT INTO category (id, name) VALUES (2, 'Encanador');
INSERT INTO category (id, name) VALUES (3, 'Pintor');
INSERT INTO category (id, name) VALUES (4, 'Programador');
INSERT INTO category (id, name) VALUES (5, 'Designer');

-- Locations
INSERT INTO location (id, state, city, neighborhood) VALUES (1, 'SP', 'São Paulo', 'Pinheiros');
INSERT INTO location (id, state, city, neighborhood) VALUES (2, 'SP', 'São Paulo', 'Vila Mariana');
INSERT INTO location (id, state, city, neighborhood) VALUES (3, 'RJ', 'Rio de Janeiro', 'Copacabana');
INSERT INTO location (id, state, city, neighborhood) VALUES (4, 'RJ', 'Rio de Janeiro', 'Tijuca');
INSERT INTO location (id, state, city, neighborhood) VALUES (5, 'MG', 'Belo Horizonte', 'Savassi');
INSERT INTO location (id, state, city, neighborhood) VALUES (6, 'RS', 'Porto Alegre', 'Moinhos de Vento');

-- Professionals (15 exemplos)
-- Alguns profissionais compartilham mesma categoria e/ou mesma região
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (1, 'Carlos Silva', 'carlos.silva@example.com', '+55 11 99999-0001', 1, 1);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (2, 'Mariana Souza', 'mariana.souza@example.com', '+55 11 99999-0002', 4, 2);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (3, 'João Pereira', 'joao.pereira@example.com', '+55 21 99999-0003', 2, 3);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (4, 'Ana Costa', 'ana.costa@example.com', '+55 21 99999-0004', 5, 3);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (5, 'Ricardo Lima', 'ricardo.lima@example.com', '+55 31 99999-0005', 4, 5);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (6, 'Patrícia Ramos', 'patricia.ramos@example.com', '+55 51 99999-0006', 3, 6);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (7, 'Mateus Fernandes', 'mateus.fernandes@example.com', '+55 11 99999-0007', 1, 2);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (8, 'Fernanda Alves', 'fernanda.alves@example.com', '+55 21 99999-0008', 2, 4);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (9, 'Bruno Rocha', 'bruno.rocha@example.com', '+55 11 99999-0009', 1, 1);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (10, 'Sofia Martins', 'sofia.martins@example.com', '+55 31 99999-0010', 5, 5);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (11, 'Lucas Gomes', 'lucas.gomes@example.com', '+55 51 99999-0011', 3, 6);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (12, 'Camila Andrade', 'camila.andrade@example.com', '+55 11 99999-0012', 4, 1);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (13, 'Eduardo Nascimento', 'eduardo.nascimento@example.com', '+55 21 99999-0013', 4, 4);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (14, 'Marisa Ribeiro', 'marisa.ribeiro@example.com', '+55 11 99999-0014', 2, 2);
INSERT INTO professional (id, name, email, phone, category_id, location_id) VALUES (15, 'Paulo Ventura', 'paulo.ventura@example.com', '+55 21 99999-0015', 1, 3);

-- Observações:
-- - Há múltiplos profissionais com a categoria 'Eletricista' (ids 1,7,9,15) e alguns na mesma cidade/bairro (ex: id 1 e 9 em Pinheiros).
-- - Algumas categorias como 'Programador' aparecem em várias cidades para testar buscas por categoria e local.