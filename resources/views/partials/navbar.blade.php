<div class="navbar border-b-2 flex justify-center">
  <div class="flex justify-between w-full max-w-7xl">
    <a class="text-xl font-semibold pl-2 lg:pl-5 hover:text-newjeans" href="/">Wordium</a>
    <div class="dropdown dropdown-end pr-2 lg:pr-5">
      <label tabindex="0" class="btn btn-ghost btn-circle avatar">
        <div class="w-10 rounded-full">
          <img src="img/profile.png" class="object-cover" />
        </div>
      </label>
      <ul tabindex="0" class="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
        @auth
        <li><a href="#" class="active:bg-newjeans">{{ auth()->user()->email }}</a></li>
        <li><a href="/dashboard" class="active:bg-newjeans">Dashboard</a></li>
        <form action="/logout" method="post">
          @csrf
          <li><button class="active:bg-newjeans" type="submit">Logout</button></li>
        </form>
        @else
        <li><a href="/login" class="active:bg-newjeans">Login</a></li>
        @endauth
      </ul>
    </div>
  </div>
</div>