--No lo habia subido
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (1, "hormiga_roja", 6, 0, 10.0, "rojo", 0.1 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (2, "mariposa_monarca", 6, 2, 40.0, "naranja", 2 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (3, "escarabajo_hercules", 6, 2, 50.0, "negro", 20 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (4, "mosca_fruta", 6, 2, 3.0, "cafe", 0.2 );
insert into insectos (insectoID, nombre, patas, alas, tamano, color, masa) 
values (5, "mosquito", 6, 2, 20.0, "cafe", 0.2 );

insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (1, "individual", 0, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (2, "colonia", 0, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (3, "colonia_avanzada", 1, 0 );
insert into grupos (grupoID, nombre, reinas, div_trabajo) 
values (4, "mega_colonia", 20, 1 );

insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (1, "tropical", 1, 1 );
insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (2, "desertico", 0, 1 );
insert into habitats (habitatID, nombre, arboles, bajo_tierra ) 
values (3, "templado", 1, 1 );