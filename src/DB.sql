Create database IF NOT EXISTS PGogi;
use PGogi;
/*tabla que contiene datos del cliente*/
Create table Client3(
    id_cli int(10) NOT NULL AUTO_INCREMENT,
    nombre varchar(10) NOT NULL,
    ap varchar(10) NOT NULL,
    am varchar(10) NOT NULL,
    username (15) NOT NULL,
    adress varchar(70) NOT NULL,
    telefono tinyint  NOT NULL,
    id_est int,
    id_coreo int,
    primary key (id_cli),
    key (nombre,ap,am,username,adress,telefono),
    foreign key('id_est') REFERENCES estad0 ('id_est') ON DELETE NO ACTION ON UPDATE CASCADE,
    foreign key('id_coreo') REFERENCES identify ('id_coreo') ON DELETE NO ACTION ON UPDATE CASCADE
);
/*poner una id al correo para poder identificar al usuario usando sucorreo como una id*/
      create table identify(
          id_coreo int (10) NOT NULL AUTO_INCREMENT,
          correo varchar (30) NOT NULL,
          primary key ('id_coreo'),
          key ('correo')
);

/*tabla de registro de los estados*/
Create table estad0 (
    id_est int (5) NOT NULL,
    n_est varchar(15) NOT NULL,
    primary key (id_est),
    key (n_est),
    
);
/*Los componentes activos son aquellos que son capaces de
 controlar el flujo de corriente de los circuitos o de
 realizar ganancias .*/
create table activ0s (
    id_act int (10) NOT NULL AUTO_INCREMENT,
    n_act varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_act),
    key (n_act,precio,cantidad,foto,descripcion)
);
/*Componentes electrónicos pasivos. Son aquellos que 
no producen amplificación y que sirven para controlarla 
electricidad */
create table pasiv0s (
    id_pas int (10) NOT NULL AUTO_INCREMENT,
    n_pas varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_pas),
    key (n_pas,precio,cantidad,foto,descripcion)
);
/*union de los coponentes activos y pasivos*/
create table discret0s (
    id_dis int (10) NOT NULL AUTO_INCREMENT,
    id_act int,
    id_nac int,
    primary key (id_dis),
    foreign key (id_act) REFERENCES activ0s (id_act) ON DELETE NO ACTION ON UPDATE CASCADE,
    foreign key (id_nac) REFERENCES nactiv0s (id_nac) ON DELETE NO ACTION ON UPDATE CASCADE
);
/*Todo tipo de circuitos integrados*/
create table integrad0s (
    id_inte int (10) NOT NULL AUTO_INCREMENT,
    n_inte varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_inte),
    key (n_inte,precio,cantidad,foto,descripcion)
);
/*Material aislante*/
create table aislantes (
    id_ais int (10) NOT NULL AUTO_INCREMENT,
    n_ais varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_ais),
    key (n_ais,precio,cantidad,foto,descripcion)
);
/*herramientas manuales*/
create table manuales(
    id_manu int (10) NOT NULL AUTO_INCREMENT,
    n_manu varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_manu),
    key (n_manu,precio,cantidad,foto,descripcion)
);
/*Herramientas electricas y electronicas*/
create table electricas(
    id_elec int (10) NOT NULL AUTO_INCREMENT,
    n_elec varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_elec),
    key (n_elec,precio,cantidad,foto,descripcion)
);
/*Uniion de las dso tipos de herramientas*/
create table herramientas(
    id_her int (10) NOT NULL AUTO_INCREMENT,
    id_manu int,
    id_elec int,
    foreign key (id_elec) REFERENCES electricas (id_elec) ON DELETE NO ACTION ON UPDATE CASCADE,
    foreign key (id_manu) REFERENCES manuales (id_manu) ON DELETE NO ACTION ON UPDATE CASCADE,
);
/*material industrial */
create table industrial(
    id_indu int (10) NOT NULL AUTO_INCREMENT,
    n_indu varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_indu),
    key (n_indu,precio,cantidad,foto,descripcion)
);
/*material electromecanico como bobinas, transformadores,inducores*/
create table emag(
    id_emag int (10) NOT NULL AUTO_INCREMENT,
    n_emag varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_emag),
    key (n_emag,precio,cantidad,foto,descripcion)
);
/*material electronico acustico como microfonos,bocinas*/
create table eacu(
    id_eacu int (10) NOT NULL AUTO_INCREMENT,
    n_eacu varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_eacu),
    key (n_eacu,precio,cantidad,foto,descripcion)
);
/*Material optoelectrico como los leds,fotoresistencias, etc*/
create table opto(
    id_opto int (10) NOT NULL AUTO_INCREMENT,
    n_opto varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    primary key (id_opto),
    key (n_opto,precio,cantidad,foto,descripcion)
);
/*shields arduino*/
create table shieldsa(
    id_sha int (10) NOT NULL AUTO_INCREMENT,
    n_sha varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    desra varchar (50) NOT NULL,
    primary key (id_sha),
    key (n_sha,precio,cantidad,foto,descripcion)
);
/*Shield Raspberry*/
create table shieldsr(
    id_sra int (10) NOT NULL AUTO_INCREMENT,
    n_sra varchar (15) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    desra varchar (50) NOT NULL,
    primary key (id_sra),
    key (n_sra,precio,cantidad,foto,descripcion)
);
create table Shield (
    id_shield int (10) NOT NULL AUTO_INCREMENT,
    n_shield varchar(20) NOT NULL,
    precio dec (5,2) NOT NULL,
    cantidad int NOT NULL,
    foto varchar (50),
    descripcion varchar(100) NOT NULL,
    id_sha int,
    id_sra int,
    primary key (id_shield),
    key (n_shield,precio,cantidad,foto,descripcion),
    foreign key (id_sha) REFERENCES shieldsa (id_sha) ON DELETE NO ACTION ON UPDATE CASCADE,
    foreign key (id_sra) REFERENCES shieldsr (id_sra) ON DELETE NO ACTION ON UPDATE CASCADE,
);
/* Tabla principal de los productos*/
Create table Product0(
id_dis int,
id_inte int,
id_ais int,
id_her int,
id_indu int,
id_emag int,
id_eacu int,
id_opto int,
id_shield int,
foreign key (id_dis) REFERENCES discret0s (id_dis) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_inte) REFERENCES integrad0s (id_inte) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_ais) REFERENCES aislantes (id_ais) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_her) REFERENCES herramientas (id_her) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_indu) REFERENCES industrial (id_indu) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_emag) REFERENCES emag (id_emag) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_eacu) REFERENCES eacu (id_eacu) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_opto) REFERENCES opto (id_opto) ON DELETE NO ACTION ON UPDATE CASCADE,
foreign key (id_shield) REFERENCES id_shield (id_shield) ON DELETE NO ACTION ON UPDATE CASCADE
);

