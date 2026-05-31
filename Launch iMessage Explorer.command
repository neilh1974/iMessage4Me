#!/bin/bash
# Double-click this file to start iMessage Explorer.
# (If it won't open: right-click → Open the first time)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP="$SCRIPT_DIR/imessage_explorer.py"

echo ""
echo "💬 iMessage Explorer"
echo "────────────────────────────────────"

# Install Flask if missing
if ! python3 -c "import flask" 2>/dev/null; then
    echo "⚙️  Installing Flask (one-time)..."
    pip3 install flask --break-system-packages -q
fi

echo "✅ Starting server at http://localhost:5001"
echo "   Opening browser in 2 seconds..."
echo "   Press Ctrl+C here to stop."
echo ""

# Open browser after short delay
(sleep 2 && open "http://localhost:5001") &

python3 "$APP"
