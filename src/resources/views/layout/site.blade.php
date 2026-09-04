<!DOCTYPE html>
<html lang="pt-br">
<head>
    {{-- aqui esta o partials --}}

    @include('partials.site.head')
</head>

<body>
{{--  Header --}}
    @include('partials.site.topo')

{{-- Main  --}}
<main>
    {{--  Area Conteudo --}}
    
    @yield('content')
</main>

    {{-- Footer --}}
    @include('partials.site.rodape')

    {{-- Scripts --}}
    @include('partials.site.script')
</body>

<</html>