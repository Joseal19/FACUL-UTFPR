INSERT INTO FORNECEDOR(cnpj, nome_empresa, e_mail)VALUES(22258160000178, 'Nike', 'nike@contato.com.br'),(61682821000140, 'adidas', 'adidas@contato.com.br'),
														(90038224000185, 'Bella Chic', 'bellaChic@contato.com.br'),(46985071000191, 'Bela Fashion', 'belaFashion@contato.com.br'),
                                                        (75519048000100, 'Lolita', 'lolita@contato.com.br'),(71738770000184, 'TodaBela', 'todaBela@contato.com.br'),
                                                        (42695767000122, 'Boutique Viollet', 'boutiqueViollet@contato.com.br'),(88612006000160, 'Madame Moda', 'madameModa@contato.com.br'),
                                                        (11739799000159, 'Vestida para Matar', 'vestidaPMatar@contato.com.br'),(24987819000152, 'Para Elas', 'paraElas@contato.com.br');
                                                        
INSERT INTO CLIENTE(cpf, e_mail, nome)VALUES(62720408069,'tomVasques@gmail.com.br','Tom Vasques Lousado'),(29682947090,'kleytonRamalho@gmail.com.br','Kleyton Ramalho Franco'),			
											(80671409018,'maisaQuinaz@gmail.com.br','Maisa Quinaz Marreiro'),(09517261020,'ritaVarela@gmail.com.br','Rita Varela Vale'),
                                            (86648161078,'albertVeiga@gmail.com.br','Albert Veiga Sabala'),(21960740040,'yasminePrado@gmail.com.br','Yasmine Prado Protasio'),
                                            (07179338060,'mohammedCoelho@gmail.com.br','Mohammed Coelho'),(61430710047,'vaniaTuna@gmail.com.br','Vania Tuna Azambuja'),
                                            (43168254029,'carolBerenguer@gmail.com.br','Carol Berenguer Padilha'),(82388380022,'louislobos@gmail.com.br','Louis Vilalobos Bivar');
                                            
INSERT INTO FUNCIONARIO(cpf_func, nome, cargo) VALUE(45208357046, 'Vanessa Rebocho', 'vendor'),(29806645022, 'Xavier Carmo ', 'vendor'),(98504373088, 'Eliane Sesimbra ', 'vendor'),
													(18572727060, 'Isabel Peralta', 'vendor'),(52471082050,' Hazael Dias ', 'vendor'),(30547332033, 'Susana Falcão ', 'vendor'),
                                                    (13025248017, 'Nathan Vieira', 'vendor'),(17264411052, 'Nathan Vieira ', 'vendor'),(85492439065, 'Joelma Paixão  ', 'vendor'),
                                                    (96818493025, 'Ravidson Amorim ', 'vendor'),
                                                    (27970885063, 'Tulio Xisto', 'caixa'),(90273226002, 'Anderson Furquim', 'caixa'),(82579479031, 'Leo Canica', 'caixa'),
													(05541493030, 'Davi Condorcet', 'caixa'),(31908877057,' Nádia Couceiro  ', 'caixa'),(46134114081, 'Andra Osório  ', 'caixa'),
                                                    (11996046071, 'Deise Monforte ', 'caixa'),(02364489008, 'Gabrielly Barcelos', 'caixa'),(18160555067, 'Vânia Lalanda  ', 'caixa'),
                                                    (40098355082, 'Dilnura Maia ', 'caixa');

INSERT INTO COMPRA(id_pedido, produto, quantidade, cpf, cpf_func)VALUES(10, 'BLUSA', 2, 62720408069, 27970885063),(11, 'CALCA', 2, 29682947090, 29806645022),(12, 'TERNO', 2, 80671409018, 98504373088),
																		(13, 'CAMISA', 2, 09517261020, 18572727060),(14, 'MEIA', 2, 86648161078, 52471082050),(15, 'BONE', 2, 21960740040, 30547332033),
                                                                        (16, 'CUECA', 2, 07179338060, 13025248017),(17, 'CAMISETA', 2, 61430710047, 17264411052),(18, 'MOLETON', 2, 43168254029, 85492439065),
                                                                        (19, 'CALCINHA', 2, 62720408069, 96818493025);

INSERT INTO PRODUTO(codigo, modelo, categoria, id_pedido) VALUES(20,'BLUSA','ENVERNO',10), (21,'CURTA','VERAO',11), (22,'SLIM','FORMAL',12), (23,'CAMISA','FORMAL',13), (24,'MEIA','UNISEX',14),
																(25,'BONE','ACESSORIO',15), (26,'CUECA','MASCULINO',16), (27,'CAMISETA','UNISEX',17), (28,'MOLETON','UNISEX',18), (29,'CALCINHA','MULHER',19);
                                                                
INSERT INTO FORNECEDOR_FORNECE_PRODUTO(cnpj, codigo) VALUES(22258160000178,20),(61682821000140,21),(90038224000185,22),(46985071000191,23),(75519048000100,24),(71738770000184,25),(42695767000122,26),(88612006000160,27),
															(11739799000159,28),(24987819000152,29);
                                                            
INSERT INTO ESTOQUE(codigo_estoque, quantidade, descricao) VALUES(30,41,'BLUSA'), (31,42,'CALCA'), (32,43,'TERNO'), (33,44,'CAMISA'), (34,45,'MEIA'), 
																 (35,46,'BONE'), (36,47,'CUECA'), (37,48,'CAMISETA'), (38,49,'MOLETON'), (39,50,'CALCINHA');

INSERT INTO PRODUTO_TEM_ESTOQUE(codigo, codigo_estoque) VALUES(20, 30),(21, 31),(22, 32),(23, 33),(24, 34),(25, 35),(26, 36),(27, 37),(28, 38),(29, 39);

INSERT INTO BAIRRO(cep, rua, nome, cpf) VALUES(83326610,'Rua Helvino Muhlmann','Estância Pinhais',62720408069),(81750200,'Rua Rosa Hauer','Boqueirão',29682947090),(80040450,'Rua Fernandes de Barros','Hugo Lange',80671409018),
											  (84062704,'Rua Vinicius Bevilacquan','Chapada',09517261020),(85858710,'Rua Engenheiro Araripe','Parque Residencial Morumbi II',86648161078),(85606405,'Rua Artur Júlio Nacke','Sadia',21960740040),
                                              (83210112,'Rua Orelino Costa','Jardim Iguaçu',07179338060),(83070250,'Rua Hermenegildo Soares Machado','Roseira',61430710047),(81710190,'Rua Dom José Marello','Xaxim',43168254029),
                                              (80530090,'Rua Napoleão Lopes','São Francisco',82388380022);
											
INSERT INTO VENDEDOR(cracha, data_contratacao,  cpf_func) VALUES(1, '2009/10/12',45208357046),(2, '2010/11/01',29806645022),(3, '2019/11/11',98504373088),(4, '2010/10/01',18572727060),(5, '2007/10/02',52471082050),(6, '2011/11/22',30547332033),
																(7, '2009/11/01',13025248017),(8, '2019/01/12',17264411052),(9, '2004/02/08',85492439065),(10, '2014/08/19',96818493025);
                                                                
INSERT INTO TELEFONE_FUNCIONARIO(id, numero, codigo_pais, cpf_func)VALUES(60, 99999999, 77, 45208357046), (61, 99552233, 55, 29806645022), (62, 88774411, 88, 98504373088), (63, 88556633, 99, 18572727060), (64, 25143685, 45, 52471082050),
																		 (65, 78424146, 65, 30547332033), (66, 99999999, 85, 13025248017), (67, 99999999, 78, 17264411052), (68, 99999999, 21, 85492439065), (69, 99999999, 63, 96818493025),
                                                                         (70, 52416978, 20, 27970885063), (71, 41576982, 41, 90273226002), (72, 45632178, 55, 82579479031), (73, 78451236, 55, 05541493030), (74, 21546378, 55, 31908877057),
																		 (75, 85241687, 21, 46134114081), (76, 87635214, 43, 11996046071), (77, 98241357, 55, 02364489008), (78, 96577244, 55, 18160555067), (79, 98724166, 55, 40098355082);   
                                                        
INSERT INTO TELEFONE_FORNECEDOR(id, numero, codigo_pais, cnpj)VALUES(80, 12904386, 77, 22258160000178), (81, 99552233, 55, 61682821000140), (82, 88774411, 88, 90038224000185), (83, 88556633, 99, 75519048000100), (84, 25143685, 45, 71738770000184),
																	(85, 78424146, 65, 42695767000122), (86, 88556677, 85, 88612006000160), (87, 33254789, 78, 11739799000159), (88, 12478541, 21, 24987819000152),(250, 99882244, 21, 24987819000152);

INSERT INTO TELEFONE_CLIENTE(id, numero, codigo_pais, cpf)VALUES(115, 99999999, 200, 62720408069), (116, 99552233, 201, 29682947090), (117, 88774411, 203, 80671409018), (118, 88556633, 204, 09517261020), (119, 25143685, 205, 86648161078),
																(120, 78424146, 206, 21960740040), (121, 99999999, 207, 07179338060), (122, 99999999, 208, 61430710047), (123, 99999999, 219, 43168254029), (124, 99999999, 220, 82388380022);