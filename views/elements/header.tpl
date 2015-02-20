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
                <a class="navbar-brand" href="{$beHtml->url($item.canonicalPath)}">
                    {$item.title|truncate:20|default:"<i>[no title]</i>"}
                </a>
            {/foreach}
        {/if}
        </div>
        <div class="navbar-collapse collapse">
        {if !empty($BEAuthUser)}
          <div class="navbar-right">
             <span class="navbar-brand">Hi, {$BEAuthUser.realname}</span>
             <a class="navbar-brand" href="{$beHtml->url('/logout')}">[Logout]</a>
          </div>
        {else}
          <form class="navbar-form navbar-right" role="form" action="{$html->here}" method="post">
            <div class="form-group">
              <input type="text" placeholder="User" class="form-control" name="login[userid]">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" name="login[passwd]">
            </div>
            <input type="hidden" name="backURL" value="{$beurl->here()}"/>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
         {/if}
        </div><!--/.navbar-collapse -->
      </div>
    </div>
