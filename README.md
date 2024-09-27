# template_jupyter_project
Jupyter + Docker &lt;3

> docker build -t temp-jupyter-env .
> docker run -it --rm -p 8888:8888 -v "$(pwd):/app" temp-jupyter-env