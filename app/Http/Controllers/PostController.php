<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = $category->name . ' in ' . $title;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = $author->name . ' in ' . $title;
        }

        return view('posts', [
            "title" => "" . $title,
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(5)->withQueryString()
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            "title" => $post->title . " - ",
            "post" => $post,
        ]);
    }
}
