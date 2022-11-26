var express = require("express");
var router = express.Router();

var votosController = require("../controllers/votosController");

router.get("/", function (req, res) {
    votosController.testar(req, res);
});

router.get("/listar", function (req, res) {
    votosController.listar(req, res);
});

router.get("/listar/:idUsuario", function (req, res) {
    votosController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    votosController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    votosController.publicar(req, res);
});

router.put("/editar/:idvotos", function (req, res) {
    votosController.editar(req, res);
});

router.delete("/deletar/:idvotos", function (req, res) {
    votosController.deletar(req, res);
});

module.exports = router;