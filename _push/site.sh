#!/bin/bash
jekyll build -s /home/dave/Public/blog -d /home/dave/Public/blog/_site
s3cmd put -P _site/ s3://blog.davyrice.com/
s3cmd put -P -m "text/css" _site/css/main.css s3://blog.davyrice.com/css/
s3cmd put -P -m "text/css" _site/css/syntax.css s3://blog.davyrice.com/css/

