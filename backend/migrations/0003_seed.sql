-- Seed data. Uses INSERT OR IGNORE so this is safe to run more than once.

INSERT OR IGNORE INTO categories (id, slug, name, sort_order) VALUES
  ('cat_capa', 'capa', 'Capas', 1),
  ('cat_pelicula', 'pelicula', 'Películas', 2),
  ('cat_carregador', 'carregador', 'Carregadores', 3);

INSERT OR IGNORE INTO products (id, category_id, name, brand, price, tag, rating, reviews, sizes, colors, icon, active, sort_order, description, stock) VALUES
  ('c1', 'cat_capa', 'Capa Antichoque Transparente', 'JCapas', 19.9, 'Novo', 4.7, 84, '["iPhone 13","iPhone 14","iPhone 15"]', '["Transparente"]', 'capa', 1, 1, 'Silicone reforçado nas bordas, proteção contra quedas.', NULL),
  ('c2', 'cat_capa', 'Capa Fosca Anti-Impressão', 'JCapas', 24.9, '', 4.6, 57, '["iPhone 13","iPhone 14","iPhone 15","Galaxy A54"]', '["Preto","Azul","Rosa"]', 'capa', 1, 2, 'Acabamento fosco que não marca dedo, encaixe perfeito.', NULL),
  ('c3', 'cat_capa', 'Capa Carteira com Suporte', 'JCapas', 34.9, 'Mais vendido', 4.8, 112, '["iPhone 13","iPhone 14","Galaxy A54","Galaxy S23"]', '["Preto","Marrom"]', 'capa', 1, 3, 'Com porta-cartão e suporte de mesa embutido.', NULL),
  ('c4', 'cat_capa', 'Capa 3 em 1 Prova de Choque', 'JCapas', 29.9, '', 4.5, 40, '["Galaxy A54","Galaxy S23","Redmi Note 12"]', '["Preto","Vermelho"]', 'capa', 1, 4, 'Camada dupla, tampa de câmera e apoio integrado.', NULL),
  ('p1', 'cat_pelicula', 'Película de Vidro 9H', 'JCapas', 12.9, 'Novo', 4.6, 96, '["iPhone 13","iPhone 14","iPhone 15","Galaxy A54","Galaxy S23","Redmi Note 12"]', '["Transparente"]', 'pelicula', 1, 5, 'Vidro temperado 9H, instalação fácil sem bolhas.', NULL),
  ('p2', 'cat_pelicula', 'Película Privacidade', 'JCapas', 17.9, '', 4.4, 33, '["iPhone 13","iPhone 14","Galaxy A54","Galaxy S23"]', '["Transparente"]', 'pelicula', 1, 6, 'Bloqueia a visão lateral da tela, ideal para uso público.', NULL),
  ('p3', 'cat_pelicula', 'Kit 3 Películas de Vidro', 'JCapas', 29.9, 'Mais vendido', 4.8, 121, '["iPhone 13","iPhone 14","iPhone 15","Galaxy A54","Galaxy S23","Redmi Note 12"]', '["Transparente"]', 'pelicula', 1, 7, 'Kit econômico com 3 unidades + kit de instalação.', NULL),
  ('r1', 'cat_carregador', 'Carregador Turbo 20W', 'JCapas', 39.9, 'Novo', 4.7, 68, '["USB-C","Lightning"]', '["Branco","Preto"]', 'carregador', 1, 8, 'Carregamento rápido compatível com a maioria dos aparelhos.', NULL),
  ('r2', 'cat_carregador', 'Cabo USB-C Reforçado 1m', 'JCapas', 15.9, '', 4.5, 77, '["USB-C","Lightning"]', '["Preto","Branco"]', 'carregador', 1, 9, 'Cabo trançado em nylon, resistente a dobras.', NULL),
  ('r3', 'cat_carregador', 'Carregador Portátil 10000mAh', 'JCapas', 59.9, 'Mais vendido', 4.9, 145, '["Universal"]', '["Preto","Branco"]', 'carregador', 1, 10, 'Power bank com carregamento rápido para dois aparelhos.', NULL),
  ('r4', 'cat_carregador', 'Carregador Veicular Duplo USB', 'JCapas', 22.9, '', 4.3, 29, '["Universal"]', '["Preto"]', 'carregador', 1, 11, 'Duas saídas USB para carregar no carro.', NULL);

INSERT OR IGNORE INTO coupons (id, code, label, rate, active) VALUES
  ('cp1', 'BEMVINDO10', 'BEMVINDO10 — 10% OFF', 0.1, 1),
  ('cp2', 'FRETEGRATIS', 'FRETEGRATIS — frete grátis', 0, 1);

INSERT OR IGNORE INTO banners (id, position, theme, eyebrow, title, description, cta_label, cta_action, active) VALUES
  ('bn1', 1, 'dark', 'JCapas', 'Qualidade que protege, preços que vendem.', 'Capas, películas e carregadores selecionados a dedo. Crie sua conta, salve seus favoritos e garanta as peças da nova coleção antes de todo mundo.', 'Ver coleção completa', 'catalog:todos', 1),
  ('bn2', 2, 'gold', 'Oferta de boas-vindas', '10% OFF na primeira compra', 'Use o cupom abaixo e garanta seu desconto no primeiro pedido', 'Copiar cupom BEMVINDO10', 'coupon:BEMVINDO10', 1),
  ('bn3', 3, 'dark', 'Envio para todo o Brasil', 'Frete grátis acima de R$ 300', 'Combinamos a entrega direto com você, sem complicação', 'Aproveitar agora', 'catalog:todos', 1);

INSERT OR IGNORE INTO admin_users (id, username, password_hash) VALUES
  ('adm_1', 'admin', '68e6f23b8ffcdc3ef1a8b81717578ec7:85970021e6e3354a7d4d0a56aee517e4eff7768f3fef02a1dbd59bfead623a5c');
