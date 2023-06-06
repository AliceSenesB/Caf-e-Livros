var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.get("/listarLivros", function (req, res) {
    usuarioController.listarLivros(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/cadastrarLivros", function (req, res) {
    usuarioController.cadastrarLivros(req, res);
})

router.post("/cadastrarPalavras", function (req, res) {
    usuarioController.cadastrarPalavras(req, res);
})
router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

module.exports = router;