
SHELL := /bin/bash
export PATH := $(HOME)/.local/bin:$(PATH)

.PHONY: boucan ensure-uv

ensure-uv:
	@command -v uv >/dev/null 2>&1 && exit 0; \
	if ! command -v curl >/dev/null 2>&1; then \
		echo "curl is required to install uv (missing)."; \
		exit 1; \
	fi; \
	echo "uv not found; installing..."; \
	curl -LsSf https://astral.sh/uv/install.sh | sh; \
	if ! command -v uv >/dev/null 2>&1; then \
		echo "uv installed but not on PATH. Add $$HOME/.local/bin to PATH (or restart your shell) and re-run."; \
		exit 1; \
	fi

boucan: ensure-uv
	uv sync
	uv run main.py