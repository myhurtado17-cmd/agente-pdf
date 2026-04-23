# Usar la imagen oficial de UV
FROM ghcr.io/astral-sh/uv:latest AS builder

# Copiar únicamente los archivos de dependencias
WORKDIR /app
COPY pyproject.toml uv.lock* ./

# Instalar con UV (sin pip)
RUN uv sync --frozen --no-dev