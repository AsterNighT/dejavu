.PHONY: all
all: dejavu

.PHONY: dejavu
dejavu: frontend-embbed
	cargo build --release

.PHONY: frontend-embbed
frontend-embbed: webui-export

.PHONY: webui-export
webui-export:
	cd webui && cp next.config.js.export next.config.js && next build && cp next.config.js.dev next.config.js
