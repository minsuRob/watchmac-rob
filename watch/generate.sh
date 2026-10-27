#!/bin/bash
# WatchMac.xcodeproj 생성 — signing.local.md 의 WATCHMAC_TEAM_ID 를 서명 팀으로 넣음.
set -e
cd "$(dirname "$0")"
source ../scripts/load-signing.sh
xcodegen generate
