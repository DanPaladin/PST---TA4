const express = require("express");

const server = express();

// Configuración.
server.set("host", "localhost");
server.set("port", 8080);
server.set("json spaces", 4);

// Midlewares.
server.use(express.json());

// Rutas.
server.get("/", require("./Rutas/Tabla"));

module.exports = server;
