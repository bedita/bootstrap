    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         {if !empty($sectionsTree)}
            {foreach $sectionsTree as $item}
                <a class="navbar-brand" href="{$html->url($item.canonicalPath)}">
                    {$item.title|truncate:20|default:"<i>[no title]</i>"}
                </a>
            {/foreach}
        {/if}
        </div>
        <div class="navbar-collapse collapse">
        {if !empty($BEAuthUser)}
          <div class="navbar-right">
             <span class="navbar-brand">Hi, {$BEAuthUser.realname}</span>
             <a class="navbar-brand" href="{$html->url('/logout')}">[Logout]</a>
          </div>
        {else}
          {$view->element('form_login')}
        {/if}
        </div><!--/.navbar-collapse -->
      </div>
    </div>
