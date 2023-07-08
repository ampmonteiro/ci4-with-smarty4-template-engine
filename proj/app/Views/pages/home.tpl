{* 
    no need {extends file='layout/default.tpl'} 
    because smartyDisplay method alread attach it by default
    3rd param of smartyDisplay method, allow to choose another template or you can just set as ''
 *}
{block name=styles}
    <style>
        .p-home {
            margin: 1rem;
        }
    </style>
{/block}

{block name=title}
    {$title}
{/block}

{block name='content-title'}
    {$title}
{/block}

{block name=content}
    <h3>Welcome static home</h3>

    <p class="p-home">This was developed base on Build Your First Application at Docs CodeIgniter.</p>

    <p class="p-home">But with complete CRUD.</p>

    <p class="p-home">More info of this project
        <a href="/about">Here</a>
    </p>
{/block}