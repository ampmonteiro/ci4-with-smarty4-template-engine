{block name=title}
    {$title}
{/block}

{block name='content-title'}
    {$title}
{/block}

{block name=content}
    <p>{$news['body']} </p>
    <section style="margin-top:2rem;display: flex; gap: 10rem;">
        <a href="/news/{$news['slug']}/edit">
            Edit article
        </a>
        {* Not working the unescape modifier *}
        {form_open('news/delete',[],['news_id' => {$news['id']}])|unescape}
        <button>Delete</button>
        {form_close()|unescape}

        {* original *}
        {* <?= form_open(
                'news/delete',
                hidden: ['news_id' => esc($news['id'])] # take advantage of named args since php 8
            ) ?>
        <button>Delete</button>
        <?= form_close() ?> *}
    </section>
{/block}