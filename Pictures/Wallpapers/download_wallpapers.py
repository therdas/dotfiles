import os
import re
import sys
import subprocess

def download_urls(url_dict):
    for key, val in url_dict.items():
        subprocess.run(["wget", val, "-O", key])


def parse_file(file):
    dict = {}
    name = ''
    url = ''
    with open(file, 'r') as wall:
        lines = wall.readlines()
        for line in lines:
            re1 = '### (.*)'
            re2 = r'dl\: \[Download\]\((.*)\)$'

            match_name = re.match(re1, line)
            match_url  = re.match(re2, line)

            if match_name is not None:
                
                name = match_name.groups(0)[0]
            elif match_url is not None:
                url =  match_url.group(1)
                dict[name] = url
    return dict

if __name__ == "__main__":
    name = 'wallpapers.md'

    if(len(sys.argv) == 2):
        name = sys.argv[1]

    dict = parse_file(name)
    print(dict)
    download_urls(dict)
