FROM python:3.9-slim
WORKDIR /app
COPY book_catalog/requirements.txt .
RUN pip install -r requirements.txt
COPY book_catalog/ .
EXPOSE 8800
ENV DATABASE_URL="postgresql://sit722_postgresql_6_2p_user:CpgkHUGAyxPebMeASxNQQVH76glX2Nzx@dpg-cquod23v2p9s73e4f6n0-a.oregon-postgres.render.com/sit722_postgresql_6_2p"
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8800"]
