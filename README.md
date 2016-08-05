
<h1>Tournament Results Project</h1>

<p>Project for Udacity's Fullstack Nanodegree program based on Swiss Pairing following the guidelines listed <a href="https://docs.google.com/document/d/16IgOm4XprTaKxAa8w02y028oBECOoB1EI1ReddADEeY/pub?embedded=true">here</a> </p>

<h2>How to run:</h2>
<ol>

<p>&#8226; Connect to your virtual environment:</p>

<pre><code>vagrant up
vagrant ssh
cd /vagrant/tournament
vagrant=&gt; psql -f tournament.sql
tournament=&gt; \q
</code></pre></li>

<h3>Run tournament_test.py via python:</h3>

<p>In the virtual environment, run the following command line in your tournament folder: </p>

<pre><code>vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
</code></pre>

<hr />

<h2>Included Files</h2>

<ol>
<li><p><b>tournament.py</b>: Contains methods for creating, deleting, and defining players and matches.</p></li>
<li><p><b>tournament_test.py</b>: Unit testing given by Udacity.</p></li>
<li><p><b>tournament.sql</b>: Database schema - <i>Includes creating/dropping db, creating/dropping tables, creating/dropping views used.</i></p></li>
<li><p><b>Readme.md</b></p></li>
</ol>


## Creator

**Leilani Raranga**

* <https://twitter.com/leilanirar>
* <https://github.com/leilaniann>


## Copyright and license

Copyright © 2016, [Leilani Raranga](http://github.com/leilaniann). Released under the [MIT license](https://github.com/helpers/helper-copyright/blob/master/LICENSE).
