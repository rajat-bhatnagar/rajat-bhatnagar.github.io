---
layout: post
title:  "Table Of Contents in Jekyll Post"
date:   2016-01-01 15:36:27
permalink: /writing/2016/01/TableOfContentsJekyllPost/
author: "Rajat Bhatnagar"
categories: jekyll
---
By default, Jekyll on Github pages is configured to use Kramdown to parse and convert Markdown1 to html format for blog post pages. Jekyll’s markdown conversion option is set in the _config.yml file like this:

{% highlight jekyll %}
markdown: kramdown
{% endhighlight %}

Kramdown, in turn, is set by default to support the automatic generation of header IDs during conversion. Kramdown (also by default) supports the automatic generation of the table of contents of all headers that have an ID set.


----------