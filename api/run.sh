#!/bin/bash
cd /app
pip3 install -r requirements.txt
python3 init_db.py
uwsgi --socket 127.0.0.1:3031 --module app --master --processes 4 --callable app --threads 2
