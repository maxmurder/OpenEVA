<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   <postdiv>|</postdiv>
   {{ post.date | date: '%Y-%m-%d' }}
   <div>
   <exerpt>
      {{ post.content | strip_html | truncatewords: 100 }}
   </exerpt>
   </div>
  </li>
 {% endfor %}
</ul>
