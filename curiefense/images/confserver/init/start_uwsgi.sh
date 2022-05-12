#!/bin/bash
# This script is intended to be compatible with unsynchronized updates to the curiefense-helm repository.

/usr/local/bin/uwsgi --ini /etc/uwsgi/uwsgi.ini --callable app --module main
