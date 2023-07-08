{block name=title}
    {$title}
{/block}

{block name='content-title'}
    {$title}
{/block}

{block name=content}
    {* {session()->getFlashdata('error')} *}
    {* {$flash_error} *}

    {* {validation_list_errors() nofilter} *}

    {form_open('news/store') nofilter}
    <p class="form-control">
        <label for="title">Title</label>
        <input id="title" name="title" value="{old('title') nofilter}">
        {if validation_show_error('title') }
            <small style="color: brown; margin-block: 0.5rem;">
                {validation_show_error('title') nofilter}
            </small>
        {/if}
    </p>

    <p class="form-control">
        <label for="body">Text</label>
        <textarea id="body" name="body" cols="45" rows="4">{old('body') nofilter}</textarea>
        {if validation_show_error('body')}
            <small style="color: brown; margin-block: 0.5rem;">
                {validation_show_error('body') nofilter}
            </small>
        {/if}
    </p>

    <button>
        Create news item
    </button>
    {form_close() nofilter}
{/block}