<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('page-title')</title>
    @vite('resources/css/app.css')
    <style>
        .active {
            color: white;
        }
    </style>
</head>

<body>

    <nav class="bg-gray-800 p-4">
        <div class="container mx-auto flex items-center justify-between">
            <div class="text-white text-lg font-semibold">
                @yield('page-name')
            </div>
            <div>
                <ul class="flex space-x-4 font-bold">
                    <li><a href="/"
                            class="{{ request()->is('/') ? 'active' : 'text-gray-300 hover:text-white' }}">Home</a></li>
                    <li><a href="/users"
                            class="{{ request()->is('users') ? 'active' : 'text-gray-300 hover:text-white' }}">Users</a>
                    </li>
                    <li><a
                            href="/posts"class="{{ request()->is('posts') ? 'active' : 'text-gray-300 hover:text-white' }}">Posts</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="bg-blue-100 p-6">
        @yield('main-content')
    </main>

    <footer class="bg-gray-800 text-white p-1 mt-1 fixed bottom-0 w-full">
        <div class="container mx-auto text-center">
            <p>&copy; 2025 All Rights Reserved Samer Hamdy</p>
            <ul class="flex justify-center space-x-4 mt-2">
                <li><a href="#" class="hover:text-gray-300">Privacy Policy</a></li>
                <li><a href="#" class="hover:text-gray-300">Terms of Service</a></li>
                <li><a href="#" class="hover:text-gray-300">Contact Us</a></li>
            </ul>
        </div>
    </footer>

</body>

</html>
