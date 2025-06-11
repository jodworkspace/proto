LOCAL_BIN=/usr/local/bin
BUF_BUILD_VERSION=1.47.2

install-buf-build:
	curl -sSL \
	"https://github.com/bufbuild/buf/releases/download/v$(BUF_BUILD_VERSION)/buf-$(shell uname -s)-$(shell uname -m)" \
	-o "$(LOCAL_BIN)/buf" && \
	chmod +x "$(LOCAL_BIN)/buf"

uninstall-buf-build:
	rm -f "$(LOCAL_BIN)/buf"