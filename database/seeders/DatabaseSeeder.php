<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Luqman Herifa',
            'username' => 'luqmanherifa',
            'email' => 'luqmanherifa@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(2)->create();

        Category::create([
            'name' => 'Web',
            'slug' => 'web'
        ]);

        Category::create([
            'name' => 'Design',
            'slug' => 'design'
        ]);

        Category::create([
            'name' => 'Game',
            'slug' => 'game'
        ]);

        Post::factory(20)->create();
    }
}
