<?php

return [
    'locations' => [
        'header-menu' => 'Header Navigation',
        'main-menu'   => 'Main Navigation',
        'footer-menu' => 'Footer Navigation',
        'content-menu'=>'Content Menu'
    ],
    'cache'     => [
        'enabled' => env('CACHE_FRONTEND_MENU', false),
    ],
];
