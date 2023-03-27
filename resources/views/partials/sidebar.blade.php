<div class="hidden lg:block w-96 pt-10 pl-12 border-l-1">
  <div class="flex flex-col gap-y-3 mb-10">
    <p class="font-bold text-xl">Pages</p>
    <p><a class="hover:text-newjeans {{ Request::is('posts*') ? 'text-newjeans' : '' }}" href="/posts">Home</a></p>
    <p><a class="hover:text-newjeans {{ Request::is('about') ? 'text-newjeans' : '' }}" href="/about">About</a></p>
    <p><a class="hover:text-newjeans {{ Request::is('categories') ? 'text-newjeans' : '' }}" href="/categories">Categories</a></p>
  </div>
  <figure><img src="https://source.unsplash.com/320x320?" /></figure>
</div>