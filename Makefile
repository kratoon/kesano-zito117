mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
project_dir := $(dir $(mkfile_path))


#	python3 -m venv venv
#	source venv/bin/activate
install-mkdocs:
	python3 -m pip install mkdocs
	python3 -m pip install mkdocs-material
	python3 -m pip install mkdocs-minify-plugin
	python3 -m pip install mkdocs-static-i18n
	python3 -m pip install mkdocs-with-pdf
	python3 -m pip install 'mkdocs[i18n]'

serve:
	python3 -m http.server --directory site

build:
	python3 -m mkdocs build --site-dir site --config-file mkdocs.yml
