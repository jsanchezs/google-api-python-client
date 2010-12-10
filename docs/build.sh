#!/bin/bash
#
# Copyright 2010 Google Inc. All Rights Reserved.
# Author: jcgregorio@google.com (Joe Gregorio)
#
# Creates the documentation set for the library by
# running pydoc on all the files in apiclient.
#
# Notes: You may have to update the location of the
#        App Engine library for your local system.

set GOOGLE_APPENGINE=$HOME/projects/google_appengine/
set DJANGO_SETTINGS_MODULE=fakesettings
set PYTHONPATH=`pwd`/..:$GOOGLE_APPENGINE
find ../apiclient/ -name "*.py" | sed "s/\/__init__.py//" | sed "s/\.py//" | sed "s/^\.\.\///" | sed "s#/#.#g" | xargs pydoc -w

