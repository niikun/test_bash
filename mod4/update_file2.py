import subprocess
from datetime import datetime,timedelta
import click

def find_recent_file(directory):
    one_day_ago = datetime.now() - timedelta(days=1)

    one_day_ago_str = one_day_ago.strftime("%Y-%m-%d %H:%M:%S")

    cmd = f"find {directory} -type f -newermt '{one_day_ago_str}'"

    result = subprocess.run(cmd, shell=True, text=True, capture_output=True)
    recent_files = result.stdout.split('\n')
    return recent_files


@click.command()
@click.argument('directory')
def main(directory):
    recent_files = find_recent_file(directory)
    print(f"Found {recent_files} recent files:")

if __name__=="__main__":
    main()