---
#In a Markdown file used for Jekyll, front matter can be specified in the form of YAML. 

#Markdown files are used to populate a site with content.

#Front matter can be formatted such as below:

title: "Jekyll Markdown File Tips"
layout: "default"
date: "2017-04-09"
author: "Samantha Feng"

#The layout tag is likely the most important bit. Essentially, this determines how the Markdown file will appear on the website. This particular Markdown file will appear according to how the "default" layout or Liquid template is written.

#Front matter variables can be called in the layout/Liquid template that is specified by calling: {{ page.VARNAME }}. For example, to print out the title of a page via the layout: {{ page.title }}.
---

[//]: # (This is a comment in the "content" section of the Markdown file and will not be parsed into HTML by Jekyll)

[//]: # (This is the "content" of the Markdown file. It will be read by Jekyll if you use {{ content }} in the Liquid template. If any HTML formatting is implemented in the Markdown, it will be applied by Jekyll - unlike if you applied it in the front matter.)