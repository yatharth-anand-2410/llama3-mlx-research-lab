.PHONY: setup blog-serve clean clean-cache notebooks

setup:
	python3 -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt
	python3 -m ipykernel install --user --name=llm_playground

blog-serve:
	bundle exec jekyll serve

clean:
	rm -rf _site
	rm -rf .jekyll-cache
	rm -rf .jekyll-metadata

clean-cache:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} +

notebooks:
	jupyter lab
