#!/bin/bash

# Script to convert SVG icons to PNG format
# Requires ImageMagick or Inkscape

echo "Converting SVG icons to PNG..."

# Check if ImageMagick (convert) is available
if command -v convert &> /dev/null; then
    echo "Using ImageMagick..."
    convert icons/icon16.svg icons/icon16.png
    convert icons/icon48.svg icons/icon48.png
    convert icons/icon128.svg icons/icon128.png
    echo "✓ Icons converted successfully!"
elif command -v inkscape &> /dev/null; then
    echo "Using Inkscape..."
    inkscape icons/icon16.svg -o icons/icon16.png -w 16 -h 16
    inkscape icons/icon48.svg -o icons/icon48.png -w 48 -h 48
    inkscape icons/icon128.svg -o icons/icon128.png -w 128 -h 128
    echo "✓ Icons converted successfully!"
else
    echo "⚠ Neither ImageMagick nor Inkscape found."
    echo "Please install one of them to convert SVG to PNG:"
    echo "  - Ubuntu/Debian: sudo apt install imagemagick"
    echo "  - Fedora: sudo dnf install imagemagick"
    echo "  - Arch: sudo pacman -S imagemagick"
    echo ""
    echo "Alternatively, you can use an online converter or create PNG icons manually."
    exit 1
fi
