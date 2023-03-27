<!doctype html>
<html lang="en" data-theme="light">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/app.css">

  <link rel="icon" href="img/wordium.png" />

  <title>{{ $title }} Wordium</title>
</head>

<body>
  @include('partials.navbar')

  <div class="max-w-[22rem] lg:max-w-7xl mx-auto">
    <div class="flex justify-center">
      <div class="lg:w-[45rem] border-r-0 lg:border-r-2 pt-6 lg:pt-10 flex lg:justify-end pr-0 lg:pr-12">
        <div class="flex flex-col w-30 lg:w-[40rem] min-h-screen">
          @yield('container')
        </div>
      </div>
      @include('partials.sidebar')
    </div>
  </div>
</body>

</html>