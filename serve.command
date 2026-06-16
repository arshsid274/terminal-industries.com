#!/bin/bash
# Double-click this file (or run it) to view the website locally.
# It serves the folder over HTTP and opens the homepage in your browser.
cd "$(dirname "$0")"
PORT=8000
echo "Serving Terminal Industries site at http://localhost:$PORT/"
echo "Press Ctrl+C to stop."
# open the homepage once the server is up
( sleep 1 && open "http://localhost:$PORT/index.html" ) &
python3 -m http.server $PORT
