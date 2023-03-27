@extends('layouts.main')

@section('container')
<h1 class="text-3xl font-bold mb-5">About</h1>

<div class="flex flex-col gap-y-2">
  <p>{{ $name }}</p>
  <p class="hover:text-newjeans"><a href="mailto:luqmanherifa@gmail.com" target="_blank">{{ $email }}</a></p>
  <p class="hover:text-newjeans"><a href="https://luqmanherifa.site" target="_blank">{{ $website }}</a></p>
  <img src="img/{{ $image }}" alt="{{ $name }}" width="200" class="mt-2">
</div>
@endsection