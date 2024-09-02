import os

POSTGRES_DBNAME=os.environ.get('POSTGRES_DBNAME', 'secnews')
POSTGRES_DBUSER=os.environ.get('POSTGRES_DBUSER', 'secnews')
POSTGRES_DBPASS=os.environ.get('POSTGRES_DBPASS', 'secnews')
POSTGRES_DBHOST=os.environ.get('POSTGRES_DBHOST', 'localhost')
POSTGRES_DBPORT=os.environ.get('POSTGRES_DBPORT', 5433)