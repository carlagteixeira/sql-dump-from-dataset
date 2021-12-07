
 INSERT IGNORE INTO categorias (categoria) VALUES ('Material de escritório');
 SET @last_category_id = LAST_INSERT_ID();
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Acessórios', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Armazenamento', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Arte', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Colchetes', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Envelopes', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Etiquetas', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Fichários', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Materiais', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Papel', @last_category_id);
 INSERT IGNORE INTO categorias (categoria) VALUES ('Móveis');
 SET @last_category_id = LAST_INSERT_ID();
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Cadeiras', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Estantes', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Mesas', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Móveis ', @last_category_id);
 INSERT IGNORE INTO categorias (categoria) VALUES ('Tecnologia');
 SET @last_category_id = LAST_INSERT_ID();
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Acessórios', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Copiadoras', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Máquinas', @last_category_id);
 INSERT IGNORE INTO categorias (categoria, parent_id) VALUES ('Telefones', @last_category_id);