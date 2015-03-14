CREATE TABLE if not exists node_types (
   id INT(11) AUTO_INCREMENT NOT NULL,
   parent INT(11),
   name VARCHAR(50) NOT NULL,
   description VARCHAR(255) NOT NULL,
   deprecated TINYINT,
   CONSTRAINT parent_type FOREIGN KEY (parent) references node_types (id) on delete cascade,
   PRIMARY KEY (id)
) ENGINE = InnoDB ROW_FORMAT = DEFAULT;

CREATE TABLE if not exists node_property_types (
	   id INT(11) AUTO_INCREMENT NOT NULL,
	   node_type INT(11),
	   name VARCHAR(50),
	   description VARCHAR(255),
	   deprecated TINYINT,
	   CONSTRAINT node_property_type FOREIGN KEY (node_type) references node_types (id) on delete cascade,
	   PRIMARY KEY (id)
) ENGINE = InnoDB ROW_FORMAT = DEFAULT;
