@extends('layouts.main')

@section('container')
<h1 class="text-3xl font-bold mb-5">Categories</h1>

<div class="flex flex-wrap gap-2">
  @foreach($categories as $category)
  <a href="/posts?category={{ $category->slug }}">
    <div class="h-20 w-52 bg-newjeans hover:bg-smalt justify-center flex items-center rounded-xl text-white">
      {{ $category->name }}
    </div>
  </a>
  @endforeach
</div>
@endsection