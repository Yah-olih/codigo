// sessão
function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var b_usuario = document.getElementById("b_usuario");

    if (email != null && nome != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        b_usuario.innerHTML = nome;

        // finalizarAguardar();
    } else {
        window.location = "login.html";
    }
}

function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "login.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
        divErrosLogin.innerHTML = texto;
    }
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}

//carrossel

const imagem = [
    {
        img: "\assets\img\T1.webp"
    },
    {
        img: "\assets\img\T2.webp"
    },
    {
        img: "\assets\img\T3.webp"
    },
    {
        img: "\assets\img\T4.webp"
    },
    {
        img: "\assets\img\T5.webp"
    }
]

var imgs = document.getElementById("img");

imgs = !!imgs === true ? imgs : document.createElement('div');
console.log(imgs);

for(var i = 0; i < imagem.length; i++){
    var img_carrossel = document.createElement('img');
    img_carrossel.src = imagem(i).img;

    imgs.appendChild(imagem);
}

const img = document.querySelectorAll("#imgs img");
let j = 0;

function carrossel(){
    var verificacao = document.getElementById("id_carrossel");
    verificacao = verificacao ? verificacao: document.createElement("verificacao");
    j++;

    if(j > img.length - 1){
        j = 0;
    }
    imgs.style.transform = `translateX(${-j * 40}vw)`;

    verificacao.src = imagem[j];
}

setInterval(carrossel, 1800);