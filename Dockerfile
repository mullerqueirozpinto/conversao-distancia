FROM python

# diretorio de trabalho
WORKDIR /usr/src/app

# copiando o arquivo com as dependencias necessarias
COPY requirements.txt .

# instalando as dependencias necessarias
RUN pip install -r requirements.txt

# copiando os arquivos do projeto
COPY . /usr/src/app/

# expondo a porta
EXPOSE 5000

# executando a aplicação
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]

