# OpenEVA
### An Extravehicular Maintenance Sim

<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   <li>
    {{ post.content | strip_html | truncatewords: 100 }}
   </li>
  </li>
 {% endfor %}
</ul>
