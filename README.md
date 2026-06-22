# iMessage4Me

iMessage4Me is a private Mac app for searching, browsing, preserving, and exporting your Apple Messages history.

It runs on your Mac and reads your local Messages database. Your messages stay on your computer.

## What It Does

1. Search messages by keyword, person, date, and attachment type.
2. Open full conversation context from any search result.
3. Browse memories from past years.
4. Export conversations and results as PDF, HTML, CSV, or plain text.
5. Keep the workflow local to your Mac.

## Why It Exists

Messages has search, but it is hard to use when you need a complete record. iMessage4Me is for finding important conversations, preserving memories, and saving readable copies of message history you do not want to lose.

## Privacy

1. Message contents are not uploaded.
2. The app reads a temporary local copy of the Messages database.
3. The original Messages database is not modified.
4. Processing happens on your Mac.

## Setup

1. Download the Mac build from GitHub Releases.
2. Open iMessage4Me.
3. Grant Full Disk Access if macOS asks.
4. Search, browse, and export your message history.

## Local Development

Run the app directly:

```bash
python3 iMessage4Me.py
```

If Flask is not installed, install it first:

```bash
pip3 install flask
```

Build the Mac app bundle:

```bash
Scripts/build_app.sh
```

The app uses `~/Library/Messages/chat.db` by default. For local testing, set `IMESSAGE4ME_CHAT_DB` to a temporary Messages database copy.

## Notes

Full Disk Access is required by macOS because Apple protects the Messages database. iMessage4Me needs that permission to read message history locally.
