---
layout: page
title: Joe's Time Wasting Learn-o-thon
tagline: Where I do what I *feel* like I want to do, and not what I'm supposed to do.
---
{% include JB/setup %}

## The Point

I am playing with static site generators.  I don't like relying on crazy complex
databases; I like what's simple.  I also am trying out `werc`.  I would like to
know about more.

## List of Posts

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

