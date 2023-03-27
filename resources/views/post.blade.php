@extends('layouts/main')

@section('container')
<div class="max-w-2xl bg-base-100 border-b-2 pb-40">
  <div>
    <div>
      <a href="/posts?author={{ $post->author->username}}">
        <div class="badge bg-newjeans hover:bg-smalt text-white border-newjeans hover:border-smalt">
          {{$post->author->name}}
        </div>
      </a>
      <a href=" /posts?category={{ $post->category->slug }}">
        <div class="badge bg-newjeans hover:bg-smalt text-white border-newjeans hover:border-smalt">
          {{$post->category->name}}
        </div>
      </a>
      <div class="badge badge-outline text-silver border-silver">{{ $post->created_at->diffForHumans() }}</div>
    </div>
    <div class="mt-3">
      <div class="lg:w-[40rem]">
        <h2 class="text-3xl font-bold mb-3">{{ $post->title }}</h2>
        <div class="mt-8 mb-10">
          @if ($post->image)
          <figure class="w-80 h-40 lg:w-[40rem] lg:h-[20rem]"><img src="{{ asset('storage/' . $post->image) }}"
              class="object-cover w-80 h-40 lg:w-[40rem] lg:h-[20rem]" />
          </figure>
          @else
          <figure class="w-80 h-40 lg:w-[40rem] lg:h-[20rem]"><img
              src="https://source.unsplash.com/1280x720?{{ $post->category->name }}"
              class="object-cover w-80 h-40 lg:w-[40rem] lg:h-[20rem]" /></figure>
          @endif
        </div>
        <article class="text-lg lg:text-xl">
          {!! $post->body !!}
        </article>
      </div>
    </div>
    <a href="/posts" class="btn bg-newjeans hover:bg-smalt mt-10 border-0">Back to Posts</a>
  </div>
</div>

@endsection