#!/exam/bin/python
import sys
import logging
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, "devops/forum/app/")
from app import app as application
application.secret_key = 'sec'
