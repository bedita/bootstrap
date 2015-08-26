<?php
// specific publication routing rules

// DO NOT EDIT OR CHANGE BELOW!!
$apiBaseUrl = Configure::read('api.baseUrl');
if (!empty($apiBaseUrl) && is_string($apiBaseUrl)) {
    $apiBaseUrl = ($apiBaseUrl == '/') ? '/*' : $apiBaseUrl . '/*';
    Router::connect($apiBaseUrl, array('controller' => 'api', 'action' => 'route'));
}

Router::connect('/lang/:lang/*', array('controller' => 'pages', 'action' => 'route'), array('lang' => '[a-z]{2,3}', 'persist' => array('lang')));
Router::connect('/*', array('controller' => 'pages', 'action' => 'route'));
