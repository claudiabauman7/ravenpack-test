import requests
import json
import numpy as np
import pandas as pd
import time

url = "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1"
while True:
    response = requests.get(url)
    print("status code:", response.status_code)

    if response.status_code == 200:
        json_object = json.loads(response.text)
        print(json_object)
        if json_object.get("deck_id") is None:
            print("Some fields were not received from the API")
    else:
        print("Error with API")

    # Wait for 5 seconds before running the loop again
    time.sleep(5)

#To automate the process, we can create a loop to continue to execute the request to the API every x amount of seconds, or 5 seconds in this example. 
#Checking that the status code is 200 checks that the process has run correctly
#To determine if the data is accurate it depends on each case, but the first step is to check if the data is present. The if statement that checks deck id can be used to check for other fields as well to ensure more accuracy.