
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        {$view->element('content')}
      </div>
    </div>


    <div class="container">
      {if empty($section.contentRequested) && !empty($section.childContents)}
        <div class="row">
          {$view->element('list_contents')}
        </div>
        <hr>

        <footer>
          <p>&copy; Company 2014</p>
        </footer>
      {/if}
    </div> <!-- /container -->