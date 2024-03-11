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
<p>
    <a href="/">Main page</a>
    <a href="/urls">Urls</a>
</p>
@if(page != null && page.getFlash() != null)
    <p>${page.getFlash()}</p>
@endif
${content}
</body>
</html>