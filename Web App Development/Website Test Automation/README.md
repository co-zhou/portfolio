# Website Test Automation

Automated end-to-end browser tests for a web application using SeleniumBase (a wrapper around Selenium and pytest).

The tests automate a real user workflow: logging in with a test account, navigating to the major sections of the site (products, product registration, download center, support), and asserting that the expected content loads on each page. Selectors use CSS and frame switching to interact with the iframe-based workspace.

## Run

`pytest test.py`
