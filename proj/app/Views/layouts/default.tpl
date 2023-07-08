<!doctype html>
<html>

<head>
    <title> {block name="title"}change the title{/block}</title>
    <link rel="stylesheet" href="/styles.css">
    {block name="styles"}{/block}
</head>

<body>
    {include file="templates/header.tpl"}
    <main>
        <h1>
            {block name="content-title"}
                title of
            {/block}
        </h1>
        {block name="content"}
            content
        {/block}
    </main>

    {include file="templates/footer.tpl"}

    {block name="js"} {/block}
</body>

</html>