@import hexlet.code.dto.UrlsPage
@import hexlet.code.util.NamedRoutes
@import hexlet.code.util.FormattedTime

@param UrlsPage page

@template.layout.page(
page = page,
content = @`
        <h1>Все сайты</h1>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Имя</th>
                <th>Последняя проверка</th>
                <th>Код ответа</th>
            </tr>
            </thead>
            @if(!page.getUrls().isEmpty())
            <tbody>
            @for (var url : page.getUrls())
                <tr>
                    <td>${url.getId()}</td>

                    <td><a href="${NamedRoutes.urlPath(url.getId())}">
                        ${url.getName()}</a>
                    </td>

                    <td>@if(page.getChecks().get(url.getId()) != null)
                        ${FormattedTime.get(page.getChecks().get(url.getId()).getCreatedAt())}
                        @endif
                    </td>

                    <td>@if(page.getChecks().get(url.getId()) != null)
                            ${page.getChecks().get(url.getId()).getStatusCode()}
                        @endif
                    </td>
                </tr>
            @endfor
            </tbody>
            @endif
        </table>
    `
)
