@extends('dashboard.layouts.main')

@section('container')
<div class="container">
  <div class="row">
    <div class="col-lg-8">
      <div class="mt-4 mb-3">
        <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to My Posts</a>
        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning text-light"><span
            data-feather="edit"></span> Edit</a>
        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
          @method('delete')
          @csrf
          <button class="btn btn-danger" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span>
            Delete</button>
        </form>
      </div>
      <div class="mb-3">
        <h1 class="mb-3">{{ $post->title }}</h1>
        @if ($post->image)
        <div style="max-height: 350px; overflow:hidden;">
          <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
        </div>
        @else
        <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}"
          class="img-fluid">
        @endif
        <article class="my-3">
          {!! $post->body !!}
        </article>
      </div>
    </div>
  </div>
</div>
@endsection