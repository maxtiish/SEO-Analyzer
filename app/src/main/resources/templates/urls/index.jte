@import hexlet.code.App
@import hexlet.code.dto.UrlsPage

@param UrlsPage page

@template.layout.page(
page = page,
content = @`
    <main>
        <h1>Все посты</h1>
        @if(!page.getUrls().isEmpty())
            @for(var url : page.getUrls())
                <h2>${url.getId()}</h2>
                <h2>${url.getName()}</h2>
                <h2>${App.getFormattedTime(url.getCreatedAt())}</h2>
            @endfor
        @endif
    </main>
    `
)
