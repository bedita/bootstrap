    {if !empty($section.currentContent)}
        {$content = $section.currentContent}
        <h1>{$content.title|default:'[no title]'}</h1>
        {if !empty($section.contentRequested)}

        {if !empty($content.relations.attach)}
	    <section>
	        {$options = ["mode" => "crop", "width" => 250, "height" => 250, "modeparam" => "000000", "upscale" => true]}
	        {$htmlAttr = [style => "float: left; width: 250px; margin: 10px 10px 10px 0"]}
	        {$optionsBig = ["mode" => "fill", "longside" => 600, "URLonly" => true]}
	        {foreach $content.relations.attach as $item}
            <p>
	          {if $item.object_type_id == $conf->objectTypes.image.id}
	            <div class="img" {if $item@iteration is div by 4}style="margin-right:0px;"{/if}>
	                <a rel="gallery" title="{$item.title}" href="{$beEmbedMedia->object($item, $optionsBig)}">{$beEmbedMedia->object($item, $options, $htmlAttr)}</a>
	            </div>
	            {if $item@iteration is div by 4}
	            <br style="clear:both;" />
	            {/if}
	          {/if}
            </p>
	        {/foreach}
	        <br style="clear:both;" />
	    </section>
    {/if}
        <p>{$content.body|default:''}<p>
        {else}
        <p>{$content.body|strip_tags|truncate:150|default:"<i>[no body]</i>"}</p>
        <a class="btn btn-primary btn-lg" href="{$beHtml->url($content.canonicalPath)}" 
                role="button">Learn more &raquo;</a>
        {/if}
    {/if}