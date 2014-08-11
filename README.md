Bootstrap
===========

Bootstrap BEdita frontend from http://getbootstrap.com

Setup
=====

a. Clone boostrap frontend into frontends path, the __frontends__ folder inside bedita root follder (like */var/www/bedita/frontends*), so:

```
      cd /var/www/bedita/frontends
      git clone https://github.com/bedita/bootstrap.git
```

b. Copy *bootstrap/webroot/index.php.sample* to *bootstrap/webroot/index.php*.


c. Copy *bootstrap/config/core.php.sample* to *bootstrap/config/core.php* and modify it, if necessary...


d. Set write permissions for temporary folder *bootstrap/tmp*.
    For example, in a unix shell, assuming 'john' is the username and current path is *frontends* folder:

```
      sudo chown -R john:www-data bootstrap/tmp
      sudo chmod -R g+w bootstrap/tmp
```

If something goes wrong take a look at log files (in *bootstrap/tmp/logs*) and tune your core.php file, changing debug level as needed (*bootstrap/config/core.php*).

Also read this article: http://docs.bedita.com/setup/if-something-goes-wrong-in-bedita
