<section class="galeria  wow animate__animated animate__fadeInUp">
            <header class="parallax-padrao">
                <h2>Galeria</h2>
                <h3>Momentos que traduzem nosso propósito</h3>
            </header>

            <div class="itensGaleria">
                @foreach ($listaGaleria as $linha)
                    <img src="{{ asset("barista/assets/$linha->imagem_galeria") }}" alt=" $linha->titulo_galeria ">
                @endforeach
                
            </div>
        </section>