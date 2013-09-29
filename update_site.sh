#!/bin/bash

echo "Rendering templates..."
python /Users/default/fun/sailing/render_templates.py
echo "Done."
echo "Rendering and compressing css files..."
lessc --yui-compress /Users/default/fun/sailing/site/static/main.less /Users/default/fun/sailing/site/static/main.css
echo "Uploading to server..."
rsync -ahvP --delete /Users/default/fun/sailing agrasso@arizona.princeton.edu:/u/agrasso/public_html/sailing
echo "Done"