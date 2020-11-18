setup:
	python3 -m venv ~/.udacity-cloud-devops-nd-aws-docker-project

env:
	#Show information about environment
	which python3
	python3 --version
	which pytest
	which pylint

lint:
	hadolint Dockerfile
	# hadolint *.sh
	pylint --disable=R,C,W1203 ./src/**.py


install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

start-api:
	#sets PYTHONPATH to directory above
	cd src && PYTHONPATH=".." python app.py

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute

all: install lint test