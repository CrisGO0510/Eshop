// importando la funcion Sequelize de la libreria sequelize para iniciar la coneccion con la base de datos
import { Sequelize } from 'sequelize';

// iniciando la conexion con la base de datos
const db = new Sequelize('db_angularprueba', 'ak15ammapt9jabc3z8r5', 'pscale_pw_M06J82aUYdOTql3oEqW3OK3G0gXyV3i2KKlTSfXtHa2', {
  host: 'us-east.connect.psdb.cloud',
  dialect: 'mysql',
  dialectOptions: {
    ssl: {
        rejectUnauthorized: true,        
    }
}
});

// exportandol aconexion con la base de datos
export default db;