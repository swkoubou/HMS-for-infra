#!/bin/bash
service nginx start
cd /usr/share/nginx/html/HMS-for-API
pip install -r requirements.txt
rm ../test.db
python3 init_db.py
uwsgi --ini myapp.ini
