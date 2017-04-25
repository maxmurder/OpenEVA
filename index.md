# OpenEVA
### An Extravehicular Maintenance Sim

<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   {{ post.content | truncatewords: 100 }}
  </li>
 {% endfor %}
</ul>
