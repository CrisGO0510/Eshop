// importando la funcion Sequelize de la libreria sequelize para iniciar la coneccion con la base de datos
import { Sequelize } from 'sequelize';

// iniciando la conexion con la base de datos
const db = new Sequelize('db_angularprueba', 'root', 'cris0510', {
  host: 'localhost',
  dialect: 'mysql'
});

// exportandol aconexion con la base de datos
export default db;