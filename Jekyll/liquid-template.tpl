---
#In a layout/Liquid template file used for Jekyll, front matter can be specified in the form of YAML.

#This file determines the appearance of a page. Templates work hand-in-hand with Markdown files: .md files call .tpl files.

#Front matter in Liquid template files typically only allow a template to extend another one (a hierarchy). For example, this template is called "liquid-template", but uses the "default" template as it's base. This means that anything in the default will also appear in this one.

layout: default
---

{% comment %}
Layouts typically combine Liquid template syntax along with HTML.
Repeating blocks/features can be put into include files to simplify the process of modifying code.
{% endcomment %}
