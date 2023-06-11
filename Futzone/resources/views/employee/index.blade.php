<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <title>Index</title>
    </head>
    <body>
        <h1>All contacts</h1>
        <div>
            <a href='{{ route('contacts.create') }}'>Add contact</a>
            <?php foreach ($contacts as $id => $contacts): ?>
                <p>{{$contacts['name']}} | <a href='{{route('contacts.show', $id) }}'>show</a></p>
                <?php endforeach ?>
        </div>
    </body>
</html>
