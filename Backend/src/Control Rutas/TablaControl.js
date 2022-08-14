const tabla_control = {};
const pool = require("../Base de Datos/conectardatabase");

//tabla_control.get_tabla = (req, res) => res.send("<h1>Presentación de tabla.</h1>");
tabla_control.get_tabla = (req, res) => {
    //pool.getConnection(); No debe ir, pero lo dejaré comentado.

    pool.query("SELECT * FROM Tiendas", function (error, rows, _) {
        pool.end();
        if (error) {
            console.error("Error en obtención de datos.");
            console.error(error);
        }
        res.json(rows);
    })
};

module.exports = tabla_control;
