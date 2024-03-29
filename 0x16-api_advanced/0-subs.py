#!/usr/bin/python3
"""
Script to retrieve the number of subscribers on a specified Reddit subreddit.
"""

import requests


def number_of_subscribers(subreddit):
    """Returns the total number of subscribers on the specified subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        subscribers = data['data']['subscribers']
        return subscribers
    else:
        return 0
