<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <link rel="canonical" href="{{ url('/') }}">
        <link rel="icon" type="image/png" href="{{ get_image_url(theme_option('favicon')) }}">
        <meta http-equiv="content-language" content="en">

        <title>{{ SeoHelper::getTitle() }}</title>

        {!! Theme::header() !!}

    </head>
    <body>
        {!! Theme::partial('header') !!}

        <div>
            {!! Theme::content() !!}
        </div>

        {!! Theme::partial('footer') !!}

        {!! Theme::footer() !!}
    </body>
</html>
