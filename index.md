<ul id="blog">
 {% for post in site.posts %}
  <li class="exerpt">
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   <postdiv>|</postdiv>
   <postdate>{{ post.date | date: '%Y - %m - %d' }}</postdate>
   <div>
   <exerpt>
      {{ post.content | strip_html | truncatewords: 100 }}
   </exerpt>
   </div>
  </li>
 {% endfor %}
</ul>
