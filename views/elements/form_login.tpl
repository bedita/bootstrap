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
