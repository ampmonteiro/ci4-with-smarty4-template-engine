{* 
    no need {extends file='layout/default.tpl'} 
    because smartyDisplay method alread attach it by default
    3rd param of smartyDisplay method, allow to choose another template or you can just set as ''
 *}
{block name=title}
    {$title}
{/block}

{block name='content-title'}
    {$title}
{/block}

{block name=content}
    <h3>
        Project: News complete CRUD
    </h3>

    <p style="margin: 1rem 0;">This simple project is base on <strong>Build Your First Application</strong>
        from CodeIgniter website with some new features like:
    </p>

    <ul style="margin: 1rem;">
        <li>
            Edit news item
        </li>
        <li>
            remove news item
        </li>
        <li>
            used of form_open helper
        </li>
        <li>
            taking advantages of layout system.
        </li>
        <li>
            better routes organization
        </li>
        <li>
            Takes advantages of
            <a href="https://www.smarty.net/documentation" target="_blank" rel="noopener noreferrer">
                Smarty Template
            </a>
        </li>
    </ul>
{/block}