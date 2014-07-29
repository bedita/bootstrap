{if !empty($section.childContents)}
    {foreach $section.childContents as $content}
       {if $content@index gt 0}
       <div class="col-md-4">
         <h2>{$content.title|default:''}</h2>
         <p>{$content.body|strip_tags|truncate:200|default:"<i>[no body]</i>"}</p>
         <p><a class="btn btn-default" href="{$html->url($content.canonicalPath)}" 
            role="button">View details &raquo;</a></p>
        </div>
       {/if}
    {/foreach}
{else}
       <div class="col-md-4">
         <p>{t}Section is empty{/t}</p>
       </div>
{/if}
