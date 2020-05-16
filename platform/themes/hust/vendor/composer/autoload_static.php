<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit2f9232a2e6366999efaf556e4921639d
{
    public static $prefixLengthsPsr4 = array (
        'T' => 
        array (
            'Theme\\Hust\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Theme\\Hust\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit2f9232a2e6366999efaf556e4921639d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit2f9232a2e6366999efaf556e4921639d::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
