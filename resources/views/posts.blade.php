@extends('layouts.main')

@section('container')
@if($posts->count())
<div class="form-control mb-0 lg:mb-5">
  <form action="/posts" method="get">
    @if(request('category'))
    <input type="hidden" name="category" value="{{ request('category') }}">
    @endif
    @if(request('author'))
    <input type="hidden" name="author" value="{{ request('author') }}">
    @endif
    <div class="mb-5">
      <input type="text" placeholder="Search" class="input input-bordered form-control w-full rounded-full focus:border-newjeans focus:outline-none" name="search" value="{{ request('search') }}" />
    </div>
  </form>
</div>

@foreach ($posts as $post)
<div class="max-w-2xl bg-base-100 border-b-2 mb-5">
  <div>
    <div>
      <a href="/posts?author={{ $post->author->username}}">
        <div class="badge bg-newjeans hover:bg-smalt text-white border-newjeans hover:border-smalt">
          {{$post->author->name}}
        </div>
      </a>
      <a href="/posts?category={{ $post->category->slug }}">
        <div class="badge bg-newjeans hover:bg-smalt text-white border-newjeans hover:border-smalt">
          {{$post->category->name}}
        </div>
      </a>
      <div class="badge badge-outline text-silver border-silver">{{ $post->created_at->diffForHumans() }}</div>
    </div>
    <a href="/posts/{{ $post->slug }}">
      <div class="flex gap-x-10 mb-7 lg:mb-10 mt-3 group">
        <div class="lg:w-[40rem]">
          <h2 class="text-base lg:text-xl font-bold mb-3 line-clamp-2 group-hover:text-newjeans">{{ $post->title
            }}</h2>
          <p class="text-sm line-clamp-2 lg:line-clamp-3 lg:text-base text-silver">{{ $post->excerpt }}</p>
        </div>
        <div>
          @if ($post->image)
          <figure class="w-20 h-20 lg:w-36 lg:h-36 mt-2 lg:mt-0"><img src="{{ asset('storage/' . $post->image) }}" class="object-cover w-20 h-20 lg:w-36 lg:h-36" />
          </figure>
          @else
          <figure class="w-20 h-20 lg:w-36 lg:h-36 mt-2 lg:mt-0"><img src="https://source.unsplash.com/500x500?{{ $post->category->name }}" class="object-cover w-20 h-20 lg:w-36 lg:h-36" />
          </figure>
          @endif
        </div>
      </div>
    </a>
  </div>
</div>
@endforeach

@else
<p>No post found.</p>
@endif
<div class="flex justify-end mt-5 pb-32">
  {{ $posts->links() }}
</div>
@endsection