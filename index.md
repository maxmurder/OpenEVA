# OpenEVA
### An Extravehicular Maintenance Sim

<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   <div class="post_exerpts">
    {{ post.content | strip_html | truncatewords: 100 }}
   </div>
  </li>
 {% endfor %}
</ul>
