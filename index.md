# OpenEVA
### An Extravehicular Maintenance Sim

<ul>
 {% for post in site.posts %}
  <li>
   <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
   <div>
    {{ post.content | strip_html | truncatewords: 100 }}
    <div></div>
   </div>
  </li>
 {% endfor %}
</ul>
