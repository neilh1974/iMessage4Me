# iMessage4Me

Search, browse, and export your Apple Messages history on your Mac. Everything runs locally against a temporary copy of the Messages database. Nothing gets uploaded anywhere.

I built this after realizing Messages search is close to useless once you need a complete record of an old conversation.

## What it does

Search by keyword, person, date, or attachment type. Open the full conversation around any result. Resurface threads from past years. Export conversations as PDF, HTML, CSV, or plain text.

## Run it

Needs Flask (pip3 install flask). macOS will ask for Full Disk Access because Apple protects the Messages database. The app reads a temp copy and never modifies the original.

For local testing, point IMESSAGE4ME_CHAT_DB at a copy of chat.db instead of the live database. Build the Mac app bundle with Scripts/build_app.sh, or run it directly:

    python3 iMessage4Me.py
