@extends('layouts.main')

@section('container')
<h1 class="text-3xl font-bold mb-5">Login</h1>

@if(session()->has('success'))
<div class="alert alert-success max-w-xs mb-3">
  <div>
    <svg xmlns="http://www.w3.org/2000/svg" class="stroke-current flex-shrink-0 h-6 w-6" fill="none" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    <span>{{ session('success') }}</span>
  </div>
</div>
@endif

@if(session()->has('loginError'))
<div class="alert alert-error max-w-xs mb-3">
  <div>
    <svg xmlns="http://www.w3.org/2000/svg" class="stroke-current flex-shrink-0 h-6 w-6" fill="none" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
    </svg>
    <span>{{ session('loginError') }}</span>
  </div>
</div>
@endif

<form action="/login" method="post">
  @csrf
  <div class="form-control w-full max-w-xs mb-3">
    <label class="label" for="email">
      <span class="label-text">Email</span>
    </label>
    <input type="email" name="email" id="email" placeholder="name@example.com" class="input input-bordered w-full max-w-xs @error('email') input-error @enderror" required autofocus value="{{ old('email') }}" />
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
    <input type="password" name="password" id="password" placeholder="••••••••" class="input input-bordered w-full max-w-xs" required />
  </div>
  <button class="btn w-full max-w-xs mt-5 bg-newjeans hover:bg-smalt border-newjeans hover:border-smalt" type="submit">Login</button>
</form>
<div class="text-sm mt-5 pb-10">Not an user? <span class="text-newjeans hover:text-smalt"><a href="/register">Register
      now</a></span>
</div>
@endsection