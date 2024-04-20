# GOREST-API-TEST

-----------------------

[![ROBOT-API-CI](https://github.com/rachelcossich/gorest-api-test/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/rachelcossich/gorest-api-test/actions/workflows/tests.yml)
[![REPORT-DEPLOYED](https://img.shields.io/badge/REPORT-DEPLOYED-brightgreen)](https://gorest-api-test.github.io/report/)

Repository with examples for STC team studies on automated **robotframework** **API** and **Schema** tests and other libs:

- robot
- requests
- jsonValidator
- faker

> The **RobotFramework** is a generic open source automation framework. It can be used for test automation and robotic process automation: [GET TO KNOW ROBOT](https://robotframework.org/)

**Note:** The other libs included are for API and Schema testing:

- [GET TO KNOW ROBOT-REQUESTS](https://github.com/MarketSquare/robotframework-requests#readme)

- [GET TO KNOW JSON-VALIDATOR](https://github.com/peterservice-rnd/robotframework-jsonvalidator/blob/master/README.rst)

- [GET TO KNOW FAKER](https://github.com/guykisel/robotframework-faker/blob/master/README.rst)

-----------------------

## Context table

> Index `README`.

- [GOREST-API-TEST](#gorest-api-test)
  - [Context table](#context-table)
    - [Prerequisites](#prerequisites)
    - [Configurations](#configurations)
    - [Installation](#installation)
      - [Tips](#tips)
    - [How to test](#how-to-test)
      - [Tips: Run tests](#tips-run-tests)
    - [Tested endpoints](#tested-endpoints)
    - [Report](#report)
      - [Tips: Run report](#tips-run-report)
        - [To view report](#to-view-report)
    - [CI](#ci)
    - [Supports](#supports)
    - [License](#license)

-----------------------

### Prerequisites

- [python and pip](https://www.python.org/downloads)
- [vscode or other IDE](https://code.visualstudio.com/download)
- [robotframework](https://github.com/robotframework/robotframework)

-----------------------

### Configurations

- Clone this project using _ssh_ or _https_.

> Clone project:

```js
git clone https://github.com/rachelcossich/gorest-api-test.git
```

-----------------------

### Installation

**IMPORTANT:**
Use makefile commands to facilitate the processes, for example:

> To install dependencies:

- Install all dependencies via **requirements.txt**:

**default, no makefile:**

```js
pip3 install -r requirements.txt
```

**in that project, with the makefile:**

```makefile
make install
```

#### Tips

- Use your **requirements.txt** to add or remove libs and install via **makefile**.

> To clean your project:

```makefile
make clean
```

-----------------------

### How to test

> To run test:

```makefile
ENV=dev make run_test
ENV=local make run_test
```

> To run all integration tests:

```makefile
ENV=dev make run_integration
ENV=local make run_integration
```

> To run all schema tests:

```makefile
ENV=dev make run_schema
ENV=local make run_schema
```

#### Tips: Run tests

- You may need to open another **terminal** to run your tests.

- You need to choose a environments for tests: `ENV=dev` or `ENV=local`

- You need to put the **@any-tag** in your **test case** or edit in makefile.

-----------------------

### Tested endpoints

> All features tested for integration:

- [ ] Create User
- [ ] Search User
- [ ] Update User
- [ ] Delete User

> All features tested for schemas:

- [ ] Create User
- [ ] Search User
- [ ] Update User
- [ ] Delete User

-----------------------

### Report

> To generate the reports:

```makefile
ENV=dev make run_report
ENV=local make run_report
```

> To clean the project:

```makefile
make clean
```

> To install the project:

```makefile
make install
```

#### Tips: Run report

- **All tests** (commands) use the **report** for better visualization of scenarios.

##### To view report

Access on: [GH-PAGES](https://gorest-api-test.github.io/report/)

> example:

[![GH-PAGES](https://i.imgur.com/zJCmIfF.png)](https://gorest-api-test.github.io/report/)

### CI

> Explain:

The `ROBOT-CI` follow these steps:

- lint for robotframework
- run all schema tests
- run all integration tests
- upload the artifact (in zip file)
- generate report and deploy on github pages: <https://gorest-api-test.github.io/report/>

-----------------------

### Supports

- Linkedin: <a href="https://www.linkedin.com/in/rachel-cossich-navarro-santos-468209137/" target="_blank">**Rachel Cossich**</a>

-----------------------

### License

[![License](https://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2024 © <a href="https://github.com/rachelcossich" target="_blank">RACHEL COSSICH</a>