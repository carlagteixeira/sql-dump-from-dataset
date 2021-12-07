

-- DROP TABLES IF EXISTS envios, produto_categoria, categorias, compra_items, compras, produtos, clientes;

create table produtos (
    id varchar(255) not null primary key ,
    produto varchar(255) not null
);


create table categorias (
    id  integer  unsigned auto_increment primary key,
    categoria varchar(255) not null,
  	parent_id integer unsigned null default null
) ;


create table cliente (
    id varchar(255) not null primary key ,
    nome varchar(255) not null
);

create table compras (
    id varchar(255) not null primary key ,
    data_compra timestamp not null default CURRENT_TIMESTAMP, 
    id_cliente varchar(255) not null
  );
  
create table compra_items (
    id integer unsigned auto_increment primary key,
    id_compra varchar(255) not null ,
    id_produto varchar(255) not null, 
    quantidade integer not null default 1, 
    desconto decimal(3,2) not null default 0, 
    total decimal(6,2) not null default 0
);

create table envios (
    id_compra varchar(255) not null primary key ,
    modo_envio varchar(255) not null,
    data_envio timestamp null,
    cidade varchar(255) not null,
    estado varchar(255) not null,
    pais varchar(255) not null,
    regiao varchar(255) not null
);

create table produto_categoria (
    id_produto varchar(255) not null primary key,
    id_categoria integer not null
);



ALTER TABLE produto_categoria
    ADD CONSTRAINT fk_produto_categoria_produto_id 
    FOREIGN KEY (id_produto)
        REFERENCES produtos(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    ADD CONSTRAINT fk_produto_categoria_categoria_id
    FOREIGN KEY (id_categoria)
        REFERENCES categorias (id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE;


ALTER TABLE compra_items
    ADD CONSTRAINT fk_compra_items_produto_id 
    FOREIGN KEY (id_produto)
        REFERENCES produtos(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    ADD CONSTRAINT fk_compra_items_compra_id
    FOREIGN KEY (id_compra)
        REFERENCES compras (id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE;


ALTER TABLE compras
    ADD CONSTRAINT fk_compras_cliente_id
    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE;

        
ALTER TABLE envios
    ADD CONSTRAINT fk_envios_compra_id 
    FOREIGN KEY (id_compra)
        REFERENCES compras(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE;


        
ALTER TABLE categorias
    ADD CONSTRAINT fk_categorias_parent_id 
    FOREIGN KEY (parent_id)
        REFERENCES categorias(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE;



