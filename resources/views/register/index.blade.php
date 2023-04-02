@extends('layouts.main')

@section('container')
<h1 class="text-3xl font-bold mb-5">Register</h1>

<form action="/register" method="post">
  @csrf
  <div class="form-control w-full max-w-xs mb-3">
    <label class="label" for="name">
      <span class="label-text">Name</span>
    </label>
    <input type="text" name="name" id="name" placeholder="Name" class="input input-bordered w-full max-w-xs @error('name') input-error @enderror" required value="{{ old('name') }}" />
    @error('name')
    <div class="text-xs text-red-600 mt-2">
      {{ $message }}
    </div>
    @enderror
  </div>
  <div class="form-control w-full max-w-xs mb-3">
    <label class="label" for="username">
      <span class="label-text">Username</span>
    </label>
    <input type="text" name="username" id="username" placeholder="Username" class="input input-bordered w-full max-w-xs @error('username') input-error @enderror" required value="{{ old('username') }}" />
    @error('username')
    <div class="text-xs text-red-600 mt-2">
      {{ $message }}
    </div>
    @enderror
  </div>
  <div class="form-control w-full max-w-xs mb-3">
    <label class="label" for="email">
      <span class="label-text">Email</span>
    </label>
    <input type="email" name="email" id="email" placeholder="name@example.com" class="input input-bordered w-full max-w-xs @error('email') input-error @enderror" required value="{{ old('email') }}" />
    @error('email')
    <div class="text-xs text-red-600 mt-2">
      {{ $message }}
    </div>
    @enderror
  </div>
  <div class="form-control w-full max-w-xs">
    <label class="label" for="password">
      <span class="label-text">Password</span>
    </label>
    <input type="password" name="password" id="password" placeholder="Password" class="input input-bordered w-full max-w-xs @error('password') input-error @enderror" required />
    @error('password')
    <div class="text-xs text-red-600 mt-2">
      {{ $message }}
    </div>
    @enderror
  </div>
  <button class="btn w-full max-w-xs mt-5 bg-newjeans hover:bg-smalt border-newjeans hover:border-smalt" type="submit">Register</button>
</form>
<div class="text-sm mt-5 pb-10">Already an user? <span class="text-newjeans hover:text-smalt"><a href="/login">Login</a></span>
</div>
@endsection