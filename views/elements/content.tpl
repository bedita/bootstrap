    {if !empty($section.currentContent)}
        {$content = $section.currentContent}
        <h1>{$content.title|default:'[no title]'}</h1>
        {if !empty($section.contentRequested)}
        <p>{$content.body|default:''}<p>
        {else}
        <p>{$content.body|strip_tags|truncate:150|default:"<i>[no body]</i>"}</p>
        <a class="btn btn-primary btn-lg" href="{$html->url($content.canonicalPath)}" 
                role="button">Learn more &raquo;</a>
        {/if}
    {/if}