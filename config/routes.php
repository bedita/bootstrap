<?php
    // specific publication routing rules

    // DO NOT EDIT OR CHANGE BELOW!!
    Router::connect('/lang/:lang/*', array('controller' => 'pages', 'action' => 'route', 'lang' => 'eng'), array('lang' => '[a-z]{2,3}', 'persist' => array('lang')));
    Router::connect('/*', array('controller' => 'pages', 'action' => 'route'));
