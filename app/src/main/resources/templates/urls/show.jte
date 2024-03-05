@import hexlet.code.App
@import hexlet.code.dto.UrlPage

@param UrlPage page

@template.layout.page(
content = @`
    <main>
        <h1>${page.getUrl().getName()}</h1>
        <h2>${page.getUrl().getId()}</h2>
        <h2>${page.getUrl().getName()}</h2>
        <h2>${App.getFormattedTime(page.getUrl().getCreatedAt())}</h2>
    </main>
`
)