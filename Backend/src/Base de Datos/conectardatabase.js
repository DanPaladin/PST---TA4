const mysql = require("mysql");
const { promisify } = require("util");

const pool = mysql.createPool({
    host: "localhost",
    user: 'root',
    password: 'DPaladin.Root0',
    database: 'Stores',
});

pool.getConnection ((error, connection) => {
    if (error) {
        if (error.code === 'PROTOCOL_CONNECTION_LOST'){
            console.error("Conexión a base de datos cerrada por error en conexión.");
        }
        if (error.code === 'ER_CON_COUNT_ERROR') {
            console.error("Base de datos tiene demasiadas conexiónes.");
        }
        if (error.code === 'ECONNREFUSED') {
            console.error("Conexión a Base de datos rechazada.");
        }
    }

    if (connection) connection.release();
    console.log("Conectado a la Base de Datos.");
    return;
});

// Callbacks a promesas.
pool.query = promisify(pool.query);

module.exports = pool;
