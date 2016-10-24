#!/usr/bin/python3
# Name: Dylan Tu
# Date: 10-24-16
# File: week10.py
# Desc: Creates directories and populates them with files

import os
import glob
import re

lpwszFileNames = """
# CREATE DIRECTORIES FIRST
site
site/app
site/app/controllers
site/app/models
site/app/views
site/app/views/layouts
site/app/views/users
site/config
site/db
site/log
site/public
site/public/images
site/public/javascripts
site/public/stylesheets

# THEN CREATE THE FILES
site/app/controllers/posts_controller.py
site/app/controllers/users_controller.py
site/app/models/post.py
site/app/models/user.py
site/app/views/layouts/application.html
site/app/views/users/account.html
site/app/views/users/index.html
site/app/views/users/signin.html
site/config/routes.py
site/config.yml
site/db/site_db.sqlite
site/db/site_db.sqlite3
site/index.py
site/log/access_log
site/log/access_log.txt
site/log/error_log
site/log/error_log.txt
site/public/stylesheets/style.css
"""

awszLines = lpwszFileNames.split('\n')
cSep = os.path.sep
for lpwszLine in awszLines:
	lpwszLine = lpwszLine.strip()

	if re.match('\s*#', lpwszLine) is None and len(lpwszLine) > 0:
		if re.search('\.[a-zA-Z0-9]+$', lpwszLine) is not None:
			aszParts = lpwszLine.split('/')
			lpwszFileName = aszParts.pop()

			# Stupid Python3 version doesn't accept lists
			lpwszDirectory = cSep.join(aszParts)
			if not os.path.exists(lpwszDirectory):
				os.mkdir(lpwszDirectory)
			open(lpwszDirectory + cSep + lpwszFileName, 'w').close()
		else:
			os.mkdir(lpwszLine)

		print("Created: %s" % lpwszLine)

