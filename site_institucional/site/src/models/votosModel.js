var database = require("../database/config");

function listar() {
    console.log("ACESSEI O VOTOS  MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT 
        a.idvotos AS idvotos,
        a.nome,
        a.fk_usuario,
        u.idUsuario AS idUsuario,
        u.nome,
        u.email,
        u.senha
    FROM votos a
        INNER JOIN usuario u
            ON a.fk_usuario = u.idUsuario; 
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function pesquisarDescricao(texto) {
    console.log("ACESSEI O votos MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function pesquisarDescricao()");
    var instrucao = `
        SELECT 
        a.idvotos AS idvotos,
        a.nome,
        a.fk_usuario,
        u.idUsuario AS idUsuario,
        u.nome,
        u.email,
        u.senha
    FROM votos a
        INNER JOIN usuario u
            ON a.fk_usuario = u.idUsuario
    WHERE a.nome LIKE '${texto}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarPorUsuario(idUsuario) {
    console.log("ACESSEI O votos MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarPorUsuario()");
    var instrucao = `
        SELECT 
        v.idvotos AS idvotos,
        v.nome,
        u.idUsuario AS idUsuario,
        u.nome,
        u.email,
        u.senha
    FROM votos v
        INNER JOIN usuario u
            ON v.fk_usuario = u.idUsuario
    WHERE u.idUsuario = ${idUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function publicar(nome, idUsuario) {
    console.log("ACESSEI O votos MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function publicar(): ", nome, idUsuario);
    var instrucao = `
        INSERT INTO votos (nome, fk_usuario) VALUES ('${nome}','${idUsuario}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function editar(novaDescricao, idvotos) {
    console.log("ACESSEI O votos MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function editar(): ", novaDescricao, idAviso);
    var instrucao = `
        UPDATE votos SET descricao = '${novaDescricao}' WHERE id = ${idvotos};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function deletar(idvotos) {
    console.log("ACESSEI O votos MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function deletar():", idvotos);
    var instrucao = `
        DELETE FROM votos WHERE id = ${idvotos};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listar,
    listarPorUsuario,
    pesquisarDescricao,
    publicar,
    editar,
    deletar
}
