GITHUB_PAGES_BRANCH=gh-pages
SITENAME=generations
THEME = gscv

html:
	hugo --theme=$(THEME)

develop:
	hugo server --theme=$(THEME) --watch

github: html
	git add -A
	git commit -m "Rebuilt site"
	git push origin master
	git subtree push --prefix=public https://evansuva@github.com/evansuva/$(SITENAME).git gh-pages


.PHONY: html clean develop
