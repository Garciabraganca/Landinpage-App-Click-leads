#!/usr/bin/env bash

set -euo pipefail

# Force-resolve the video conflict by taking our branch's copy
# and re-applying the merge preferences from .gitattributes.

git checkout --ours video-app.mp4
git add video-app.mp4 .gitattributes

echo "video-app.mp4 marked as resolved using the branch version."
