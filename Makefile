setup:
	python3 -m venv venv

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	# python -m pytest -vv tests/*.py
	python -m pytest -vv --cov=src tests/*.py

lint:
	pylint --disable=R,C src/mod.py

all: install lint test