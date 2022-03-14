setup:
	source venv/bin/activate

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vv tests/*.py

lint:
	pylint --disable=R,C file-adapter

all: install lint test