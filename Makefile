
build: components bootstrap-tables.css
	@component build --dev

bootstrap-tables.css: bootstrap-tables.less
	node_modules/.bin/recess bootstrap-tables.less --compile > bootstrap-tables.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-tables.css

.PHONY: clean
