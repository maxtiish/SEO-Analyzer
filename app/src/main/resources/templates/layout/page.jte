@import hexlet.code.dto.BasePage
@import gg.jte.Content

@param Content content
@param BasePage page = null

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Analyzer</title>
</head>
<body>
<ul>
    <li>
        <a href="/">Main page</a>
    </li>
    <li>
    <a href="/urls">Urls</a>
    </li>
</ul>

@if(page != null && page.getFlash() != null)
    <p>${page.getFlash()}</p>
@endif

<div>
    ${content}
</div>

</body>
</html>