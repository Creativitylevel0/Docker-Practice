FROM python:3.13.11-slim


COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin

WORKDIR /code

COPY pyproject.toml .python-version uv.lock ./

RUN uv sync --locked   
# By doing sync we are making sure that dependencies would be similar in container and our virtual environment(python environment)
ENV PATH="/code/.venv/bin:$PATH" 
#Now there is now need to add uv run inside entrypoint.

# RUN pip install pandas pyarrow (Not needed since we copied all files directly)

COPY pipeline.py .

ENTRYPOINT [ "python","pipeline.py" ]