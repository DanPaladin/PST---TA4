const { Router } = require("express");

const router = Router();

const { get_tabla } = require("../Control Rutas/TablaControl");

router.route("/").get(get_tabla);

module.exports = router;
