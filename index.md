# OpenEVA
### An Extravehicular Maintenance Sim

<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   {{ post.content | strip_html | truncatewords: 50 }}
  </li>
 {% endfor %}
</ul>
