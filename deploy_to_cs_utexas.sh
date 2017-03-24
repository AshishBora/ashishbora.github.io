jekyll build --config _config_cs_utexas.yml

LOCAL=/Users/ashish/ashishbora.github.io/_site/*
REMOTE=ashishb@eldar-1.cs.utexas.edu:/lusr/u/ashishb/public_html/
rsync -auz --progress $LOCAL $REMOTE
