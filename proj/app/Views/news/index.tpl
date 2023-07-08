{* 
    no need {extends file='layout/default.tpl'} 
    because smartyDisplay method alread attach it by default
    3rd param of smartyDisplay method, allow to choose another template or you can just set as ''
 *}
{block name=styles}
    <style>
        article,
        main {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        article {
            gap: 0.5rem;
        }
    </style>
{/block}

{block name='title'}
    {$title}
{/block}

{block name='content-title'}
    {$title}
{/block}
{block name=content}

    {foreach $news as $item}
        <article>
            <h3>
                {$item['title'] }
            </h3>

            <p class="main">
                {$item['body']}
            </p>
            <a href="/news/{$item['slug']}">
                View article
            </a>
        </article>
    {foreachelse}
        <h3>No News</h3>
        <p>Not to find any news for you.</p>
    {/foreach}
{/block}