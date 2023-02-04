-- creacion de la base de atos
CREATE DATABASE db_angularprueba;

-- usar la base de atos
USE db_angularprueba;

-- creacion de la tabla de usuario
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  root BOOLEAN,
  address VARCHAR(255)
);

-- creación del registro que contendra la inforamcion del admin
INSERT INTO users (id, username, password, phone, email, root, address) VALUES (1, "admin", "admin12345", "3217829838", "santiago.torifa@utp.edu.co", true, "admin");

-- creacion de la tabla de productos
CREATE TABLE productos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  details VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  stockMin INT NOT NULL,
  stockMax INT NOT NULL,
  stock INT NOT NULL
);

-- creacion de los registros con la informacion de los productos
INSERT INTO productos(name, details, price, stockMin, stockMax, stock) VALUES 
("Postre de Maracuya", "Postre acido, suave, hecho con maracuya, leche y azucar", 5000.00, 10, 50, 45),
("Tiramisu", "Postre de textura suave, cremosa, con toques de sabor a cafe", 7000.00, 10, 50, 45),
("Postre de limon", "Textura esponjosa, bajo en azucarm con toques acidos", 5000.00, 10, 50, 45),
("Flan", "Sabor a arequipe, textura suave con sabor a leche con arequipe", 4000.00, 10, 50, 45),
("Postre tres leches", "Textura esponjosa con sabor a leche dulce y toques de chocolate", 8000.00, 10, 50, 45),
("Selva Negra", "Torta humeda con sabor a chocolate, con cubierta de arequipe y toques de cafe", 8000.00, 10, 50, 45),
("Postre de frutos rojos", "Textura gelatinosa, con sabores acidos dulces y llamativos colores", 5000.00, 10, 50, 45),
("Milhojas", "Varias galletas por crema de queso y arequipe que da una textura crocante", 6000.00, 10, 50, 45),
("Leche asada", "Textura gelatinosa con toques sabor a queso y leche dulce", 4500.00, 10, 50, 45),
("Esponjado de naranja", "Postre de textura esponjosa con sabor entre dulce y acido", 4000.00, 10, 50, 45);

-- creacion de la tabla de imagenes
CREATE TABLE images (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  image1 TEXT NOT NULL,
  idProduct INT NOT NULL
);

-- creación de los registros con la información de los productos
INSERT INTO images (image1, idProduct) VALUES
("https://mundorecetas365.com/wp-content/uploads/2021/11/como-hacer-postre-de-maracuya-1.png", 1),
("https://cdn0.recetasgratis.net/es/posts/2/3/9/postre_de_maracuya_con_galletas_y_gelatina_58932_600_square.jpg", 1),
("https://revistaprimetime.com/wp-content/uploads/2019/10/Postredemaracuya-CortesiaCocinaVital.jpg", 1),

("https://sallysbakingaddiction.com/wp-content/uploads/2019/06/homemade-tiramisu-2.jpg", 2),
("https://www.ilolay.com.ar/uploads/recetas/1658880862-Tiramisu.jpg", 2),
("https://img2.rtve.es/i/?w=1600&i=1635859279860.jpg", 2),

("https://i.pinimg.com/736x/ac/1f/e7/ac1fe7458dbf1cac140ac07cf55f413d.jpg", 3),
("https://i.ytimg.com/vi/GUnW4_7xfEQ/maxresdefault.jpg", 3),
("https://2.bp.blogspot.com/-mkG1h2YivTM/W3BArhzRWuI/AAAAAAAAQCM/zsXCHqfkY90_ETAfFcD5OCFAdCHGH7ojwCLcBGAs/s1600/Postre%2Blimon%2B_%2B10.JPG", 3),

("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiM1oC2GcSEXeQOQd0P8KlNvpIqMIxNnqsEwOZ470cYGVCfepzo1IF2rfHGp9JtFajz9JVCtiC_6Ot4S-ECmhQkK0OecfpPSqR6mX67AXay0e7jrnTU2ilDKr_NvNhohTz9RrsGabXi3tuOofcCI_rlf9iMG0n819BVoqVRPm1mOcZ2CBuRREMNjxL_Ow/s1600/flan-queso-crema-receta.JPG", 4),
("https://cdn0.recetasgratis.net/es/posts/0/8/8/flan_de_caramelo_casero_50880_600_square.jpg", 4),
("https://www.tasteofhome.com/wp-content/uploads/2018/01/Creamy-Caramel-Flan_EXPS_FT20_2197_F_0723_1-4.jpg", 4),

("https://i.ytimg.com/vi/n0ymEFZJBho/maxresdefault.jpg", 5),
("https://www.elespectador.com/resizer/UvZjf8aZUlBPua4K01LNHiBN2Do=/arc-anglerfish-arc2-prod-elespectador/public/3PJDG5WXZZCR7I3L4X3C3E3NBE.jpg", 5),
("https://live.mrf.io/statics/i/ps/irecetasfaciles.com/wp-content/uploads/2019/09/pastel-tres-leches.jpg", 5),

("https://www.menudospeques.net/images/cocinaynutricion/tarta-selva-negra-receta.jpg", 6),
("https://www.comedera.com/wp-content/uploads/2022/09/shutterstock_1666023019.jpg", 6),
("https://www.finedininglovers.com/es/sites/g/files/xknfdk1706/files/2021-03/foresta-nera-storia.jpg", 6),

("https://static-sevilla.abc.es/media/gurmesevilla/2014/01/tarta-queso-rojos.jpg", 7),
("https://img.recetascomidas.com/recetas/640_480/tarta-de-queso-con-frutas-del-bosque.jpg", 7),
("https://i0.wp.com/www.todocooking.com/wp-content/uploads/2020/06/Tarta-de-queso-y-frutos-rojos-2020-02.jpg?resize=800%2C530&ssl=1&is-pending-load=1", 7),

("https://imag.bonviveur.com/racion-de-milhojas-de-chocolate.jpg", 8),
("https://recetas123.net/wp-content/uploads/mil-hojas.jpg", 8),
("https://4.bp.blogspot.com/-LI5Rw8H57Dc/VzTsd1woX4I/AAAAAAAABYs/eb4ynYH4tGcDJcALkY9SQfgfE1I8QjWjwCLcB/s1600/milhojas-de-merengue-y-crema-pastelera.jpg", 8),

("https://img-global.cpcdn.com/recipes/0f99cfcae26f39f5/400x400cq70/photo.jpg", 9),
("https://www.gourmet.cl/wp-content/uploads/2018/03/Leche-Asada-Web.jpg", 9),
("https://okdiario.com/img/2019/12/03/receta-de-leche-asada-en-microondas-1.jpg", 9),

("https://cdn1.cocina-familiar.com/recetas/postre-cremoso-y-facil-de-naranja.JPG", 10),
("https://3.bp.blogspot.com/-y36H4JqTKmY/WmWglj14HwI/AAAAAAAAHO4/tULKH4uH2dopfEjM7KtTHNWZiuT2fzkogCLcBGAs/s1600/manjar-naranja-maicena-venezolano.jpeg", 10),
("https://www.hogarmania.com/archivos/201911/karl6465-crema-de-naranja-y-canela-1280x720x80xX.jpg", 10);

