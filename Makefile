ALLURE_FOLDER = ./allure-results
RESULTS_FOLDER = ./results
TAG = integration
ENV = dev

clean: allure_clean
	rm -rf .tox/
	rm -rf .coverage/
	rm -rf htmlcov/
	rm -rf log* *_output.xml report* results*

install:
	pip install -r -u requirements.txt

run_test:
	robot --listener allure_robotframework:$(ALLURE_FOLDER) \
	-d $(RESULTS_FOLDER) -L trace \
	-i my_test \
	-V ./resource/configs/env/$(ENV).yml .

run_schema:
	robot --listener allure_robotframework:$(ALLURE_FOLDER) \
	-d $(RESULTS_FOLDER) -L trace \
	-i schema \
	-V ./resource/configs/env/$(ENV).yml ./tests/schema/ .

run_integration:
	robot --listener allure_robotframework:$(ALLURE_FOLDER) \
	-d $(RESULTS_FOLDER) -L trace \
	-i integration \
	-V ./resource/configs/env/$(ENV).yml ./tests/integration/ .

allure_clean:
	rm -r allure-* allure_* || true

run_report:
	allure generate allure-resulst --clean -o allure-report