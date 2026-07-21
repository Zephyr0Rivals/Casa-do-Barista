<!DOCTYPE html>
<html lang="pt-br">
<head>
    //aqui esta o partials

    @include('partials.head')
</head>

<body>
// Header
    @include('partials.topo')

// Main 
<main>
    // Area Conteudo
    @yield('content')
</main>

    // Footer
    @include('partials.rodape')

    // Scripts
    @include('partials.script')
</body>

<</html>