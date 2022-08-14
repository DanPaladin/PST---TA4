const app = require("./App");

const host = app.get("host");
const port = app.get("port");

app.listen(port, () => {
    console.log(`Iniciando servidor web en: http://${host}:${port}`);
});
