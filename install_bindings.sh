#!/bin/sh

TARGET="$HOME/.config/hypr/bindings.conf"
SOURCE="./conf/bindings.conf"
MARKER="## --------------------------- CUSTOM BINDS  --------------------------- ##"

UPDATED=0

# Remove existing block (marker + following lines until next blank line or EOF)
if grep -qF "$MARKER" "$TARGET"; then
    # Delete everything from the marker to the end of the file
    awk -v marker="$MARKER" '$0 == marker { exit } { print }' "$TARGET" > "${TARGET}.tmp" \
        && mv "${TARGET}.tmp" "$TARGET"
    UPDATED=1
fi

# Append newline + marker + new block
{
    echo ""           # blank line
    echo "$MARKER"
    echo ""           # blank line
    cat "$SOURCE"
} >> "$TARGET"

if [[ $UPDATED -eq 1 ]]; then
    echo "Binds updated successfully"
else
    echo "Binds added successfully."
fi
