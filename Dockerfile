version: '3.8'

services:
  db:
    image: postgres:16
    restart: always
    environment:
      POSTGRES_USER: tainaBD
      POSTGRES_PASSWORD: admin
      POSTGRES_DB: amdin
    ports:
      - "5432:5432"
