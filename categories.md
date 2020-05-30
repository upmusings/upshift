---
title: Categories
description: why we keep doing the same mistakes. Been there, done that; same mistake. Why? Three basic flaws. They are the reason why do we keep doing the same mistake even if we know better.
image: https://raw.githubusercontent.com/upmusings/upshift/master/images/samemistakes.png
permalink: /categories/
date: 2020-04-07 14:30:47 +0300
---

<div id="archives">
{% for category in site.categories %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <div id="#{{ category_name | slugize }}"></div>
    <p></p>

    <h3 class="category-head">{{ category_name }}</h3>
    <a name="{{ category_name | slugize }}"></a>
    {% for post in site.categories[category_name] %}
    <article class="archive-item">
      <h5><a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a></h4>
    </article>
    {% endfor %}
  </div>
{% endfor %}
</div>