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
        {* nofilter to not escape html *}
        {form_open('news/delete', [], ['news_id' => {$news['id']}]) nofilter}
        <button>Delete</button>
        {form_close() nofilter}

        {* Named Argument not supported*}
        {* {form_open('news/delete', hidden:['news_id' => {$news['id']}]) nofilter}
        <button>Delete</button>
        {form_close() nofilter} *}
    </section>
{/block}