# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
books = [
  { title: 'Son of ice and fire', icon_name: 'ice_fire.jpg'      , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Clash of kings',      icon_name: 'clash_kings.jpg'   , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Hunger games',        icon_name: 'hunger_games.jpg'  , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Argo',                icon_name: 'argo.jpg'          , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Blueberry',           icon_name: 'blueberry.jpg'     , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Ghost machine',       icon_name: 'ghost_machine.jpg' , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Storm of swards',     icon_name: 'storm_swards.jpg'  , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Catching fire',       icon_name: 'catching_fire.jpg' , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' },
  { title: 'Sample book',         icon_name: nil                 , description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.' }
]

Book.create books

body = '

<h1 id="what-i-used-and-learned">What I used and learned</h1>
<h2 id="bootstrap">Bootstrap:</h2>
<p>proper rendering and touch zooming:</p>
<pre class="prettyprint">
  <code class="language-html hljs "><span class="hljs-tag">&lt;<span class="hljs-title">meta</span> <span class="hljs-attribute">name</span>=<span class="hljs-value">"viewport"</span> <span class="hljs-attribute">content</span>=<span class="hljs-value">"width=device-width, initial-scale=1"</span>&gt;</span></code></pre>

<p>I chose to setup sass instead of less since it was the default with rails and also after reading <a href="http://www.zingdesign.com/less-vs-sass-its-time-to-switch-to-sass/">this article</a></p>

<blockquote>
  <p><strong>Note:</strong> although this happens to the best of us, remember that you need to go through the documents and articles and learn things before starting to use them. for instance, instead of quickly jumping into setting up sass in your app, you better start reading about it, find the gotchas, etc. believe me, not only you save so much time later, but also you can tell the next smarty pant to shut up since you exactly know what you are doing.</p>
</blockquote>

<p>in order to manage my front-end libraries, I decided to use <a href="http://bower.io/">bower</a> which is like a bundler for font-end. <a href="http://angular-rails.com/bootstrap.html">this article</a> describes why. <br>
However, i couldnâ€™t make font-awesome work nicely with bower and rails since it requires the fonts to be in public directory, so i used font-awesome-sass gem instead for now.</p>

<p>Since I was using some bootstrap themes and had to convert the css to sass, i used <a href="css2sass.herokuapp.com">css2sass</a>. itâ€™s good but i had to go through my file and re-arrange some of the css so that it merges them together for sass. and i also moved some repeating functionalities into sass mixins and named my colours.</p>



<h2 id="angularjs">Angularjs</h2>



<h3 id="organising-components">organising components</h3>

<p>After a lot of consideration, I decided to follow the angular way rather than the rails asset pipeline way and put all my angularjs files into components directory. This way I put the js and the html file inside a directory with the name of the component.</p>



<h3 id="testing-javascript-with-rspec">testing javascript with rspec</h3>

<p>First of all, I integrated <a href="https://travis-ci.org">travis</a> with my github repository. I used the free version since my app was opensource. very easy, i just needed a .travis.yml file with ruby language and itâ€™s version and a before_script to mention my test database.</p>

<p>Secondly, I setup <a href="https://github.com/modeset/teaspoon">teaspoon</a> with Capybara and Mocha to run javascript tests for my angular components. <br>
I also added <a href="https://docs.angularjs.org/api/ngMock">angular-mocks</a> to my bower and spec_helper. <br>
<a href="https://github.com/sjahandideh/stories/commit/87322b6">this is the initial working controller spec</a></p>



<h2 id="pivotal-tracker">Pivotal Tracker</h2>

<p>yes, after a week, i realised i really needed a nice and easy project tracker. i used to put everything in wunderlist but it wasnâ€™t really working for me, so i setup <a href="https://www.pivotaltracker.com">pivotal tracker</a> for free, added some of my stories to it and kept track of my progress. The best thing is that you can see how much you have achieved :)</p>
'

chapters = [
  { title: 'chapter one',   body: body },
  { title: 'chapter two',   body: body },
  { title: 'chapter three', body: body }
]

Book.first.chapters.create chapters
