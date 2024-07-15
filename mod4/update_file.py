#!/home/codespace/.python/current/bin/python

import time
import os
from datetime import datetime,timedelta
import click

def find_recent_file(directory):
    now = time.time()
    one_day_ago = now - (24*60*60)

    recent_files = []

    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root,file)
            file_mtime = os.path.getmtime(file_path)

            if file_mtime > one_day_ago:
                recent_files.append(file_path)

    return recent_files

@click.command()
# @click.option('--directory', default='.', help='Directory to search for recent files')
@click.argument('directory')
def main(directory):
    recent_files = find_recent_file(directory)
    print(f"Found {recent_files} recent files:")

if __name__=="__main__":
    main()