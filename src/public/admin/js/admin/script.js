function alternarTexto(botao) {
    
    // ? Encontra a caixinha DIV mais proxima 
    
    const container = botao.closest('.texto-container');

    // ? Liga ou desliga a classe 'expandido' na caixinha

    container.classList.toggle('expandido');

    //? Mudar o texto do botão dependendo se a caixa está expandida ou não
    
    if (container.classList.contains('expandido')) {
        botao.innerText = 'Ver menos';

    } else {

        botao.innerText = 'Ver mais';
    }
}