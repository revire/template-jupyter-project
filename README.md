# template_jupyter_project
Jupyter + Docker &lt;3

> docker build -t temp-jupyter-env .
> 
> docker run -it --rm -p 8888:8888 -v "$(pwd):/app" temp-jupyter-env


To convert notebook to pdf without code blocks:

> jupyter nbconvert --to pdf --TemplateExporter.exclude_input=True  notebook.ipynb 
